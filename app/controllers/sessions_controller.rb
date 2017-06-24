class SessionsController < ApplicationController
  layout "home"
  def new
  end

  def create
    usuario = Usuario.find_by(login: params[:session][:login].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      # Log the usuario in and redirect to the usuario's show page.
     log_in usuario
     redirect_to usuario
     else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
 end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end