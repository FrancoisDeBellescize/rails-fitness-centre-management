class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :is_admin, :pages

  def is_admin
    session["admin"]
  end

  def routing_admin
    redirect_to new_session_path, notice: 'Unauthorized page' if !is_admin
  end

  def pages
    Page.all
  end
end
