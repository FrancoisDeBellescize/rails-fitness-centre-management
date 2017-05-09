class SessionsController < ApplicationController
  def new
  end

  def create
    respond_to do |format|
      if Digest::SHA512.hexdigest(params[:password]) == Rails.application.secrets.admin_password
        session["admin"] = true
        format.html { redirect_to root_path, notice: 'User successfully logged in.' }
      else
        format.html { redirect_to new_session_path, notice: 'Invalid password' }
      end
    end
  end

  def destroy
    respond_to do |format|
      session["admin"] = false
      format.html { redirect_to new_session_path, notice: 'Logged out!' }
    end
  end
end
