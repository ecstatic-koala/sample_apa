class ApplicationController < ActionController::Base
  protect_from_forgery
  # By default, all the helpers are available in the views but not in the controllers
  include SessionsHelper
end
