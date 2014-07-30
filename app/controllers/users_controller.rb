class UsersController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @userpins = Pin.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end


  def index
    @user = Pin.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end
end