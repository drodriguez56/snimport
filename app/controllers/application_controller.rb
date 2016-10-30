class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :store_previous_url

  def store_previous_url
    return unless request.get?
    if (request.path != "/login" &&
        request.path != "/logout" &&
        request.path != "/signup" &&
        request.path != "/password" &&
        request.path != "/password/recover" &&
        !request.xhr?) # don't store ajax calls
    end
  end
end
