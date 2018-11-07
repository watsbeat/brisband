class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end

  def admin
    if current_user.has_role?(:admin)
      @flagged_comments = Comment.where(flagged: true)
      @flagged_items = Item.where(flagged: true)
    else
      redirect_to home_index_path
    end
  end
end
