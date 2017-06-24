module SessionsHelper
  # Logs in the given usuario.
  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Usuario.find_by(id: session[:usuario_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  # Forgets a persistent session.
  def forget(usuario)
    #usuario.forget
    cookies.delete(:usuario_id)
    #cookies.delete(:remember_token)
  end
  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:usuario_id)
    @current_user = nil
  end
end