class ApplicationController < ActionController::Base
  before_filter lambda{ request.body.rewind }

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
