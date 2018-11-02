class ChargesController < ApplicationController
    before_action :authenticate_user!
    def new
    end

    def create
    @item = Item.find(session[:item_id])
    # Amount in cents
    @amount = @item.price_in_cents

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => @item.model,
        :currency    => 'aud'
    )

    flash[:notice] = "Thanks for your payment of A$#{@item.price}"
    @item.purchased(current_user)
    redirect_to items_path

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
    end
end
