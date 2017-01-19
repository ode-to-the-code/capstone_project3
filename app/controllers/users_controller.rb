class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @deeds = @user.deeds
  end

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      )
    if user.save 
      session[:user_id] = user.id
      flash[:success] = "Successfully created account!"
      redirect_to '/deeds'
    else 
      flash[:warning] = "invalid email or password!"
      redirect_to '/signup'
    end 
  end 
end


