class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :is_admin, :pages, :membership_options, :classes

  def is_admin
    session["admin"]
  end

  def routing_admin
    redirect_to new_session_path, notice: 'Unauthorized page' if !is_admin
  end

  def pages
    Page.all
  end

  def membership_options
    MembershipOption.all
  end

  def classes
    Classe.all
  end

end
