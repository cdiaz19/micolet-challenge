# frozen_string_literal: true

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.welcome_notification(@user).deliver_now
      redirect_to new_user_path, notice: t(:success_flash)
    else
      redirect_to root_url, alert: t(:error_flash)
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, preferences: [])
  end

end
