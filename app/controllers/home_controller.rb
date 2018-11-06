class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end

  def admin
    @flagged_comments = Comment.where(flagged: true)
    @flagged_items = Item.where(flagged: true)
  end
end
