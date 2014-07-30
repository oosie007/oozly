class UsersController < ApplicationController

def index
    @users = User.all
end




def show
    @user = User.find(params[:user_id])
    @userpins = Pin.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
end


  
end