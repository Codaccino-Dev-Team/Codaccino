class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth( request.env["omniauth.auth"] )
    if user.persisted?
      flash[:success]= "#{user.email}, you are signed in!"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_admin_session_path
      raise admin.attributes.to_yaml
    end

  end
  alias_method :twitter, :all


end
