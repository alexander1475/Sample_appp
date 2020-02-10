class StaticPagesController < ApplicationController
  def home
  	@micropost = Micropost.new
  	@feed_items = current_user.microposts.paginate(page: params[:page]) if current_user
  end

  def help
  end

  def about
  end

  def contact
  end
end
