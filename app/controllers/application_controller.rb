class ApplicationController < ActionController::Base
  layout "main"

  protect_from_forgery with: :exception
  include SessionsHelper
  def login
    render html: "Login to INES"
  end
end
