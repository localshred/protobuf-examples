class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    begin
      @user = User.create!(params[:user])
      flash[:notice] = 'User created successfully'
      redirect_to users_path
    rescue
      flash[:error] = $!.message
      redirect_to new_user_path
    end
  end
  
end
