class UsersController < ApplicationController
  def new
    # Create a new user and for filling in the forms.
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"    
      # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    # Find user with given user id.
    @user = User.find(params[:id])
  end
end
