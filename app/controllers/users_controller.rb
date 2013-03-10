class UsersController < ApplicationController
  def new
    # Create a new user and for filling in the forms.
    @user = User.new
  end
  
  def create
    # Create new user
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      # If successful save, show flash message
      flash[:success] = "Welcome to the Sample App!"    
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
