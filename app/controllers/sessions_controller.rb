class SessionsController < ApplicationController
  def new
  end

  def create
    if Digest::SHA512.hexdigest(params[:password]) == Rails.application.secrets.admin_password
      session["admin"] = true
      redirect_to root_path, notice: 'User successfully logged in.'
    else
      redirect_to new_session_path, notice: 'Invalid password'
    end
  end

  def destroy
    session["admin"] = false
    redirect_to new_session_path, notice: 'Logged out!'
  end
end
