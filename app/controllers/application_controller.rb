class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_page
    params[:page] || 1
  end

  def per_size
    params[:per] || 5
  end
end
