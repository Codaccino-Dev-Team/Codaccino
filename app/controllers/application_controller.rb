class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :permission_denied

private

  def permission_denied
    flash[:alert] = "You must be logged in to perform that action."
    redirect_to(request.referrer || root_path)
  end

end
