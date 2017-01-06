class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def default_render(*args)
    render :nothing
  end
end
