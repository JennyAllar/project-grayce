class UsersController < ApplicationController
  def new
    render template: 'users/registrations/new'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(email: params[:email])
    redirect_to user_path(@user)
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  private
  def user_params
    params.require(:user).permit(:email)
  end
end
