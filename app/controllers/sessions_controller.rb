class SessionsController < ApplicationController
  include TwitterOmniauthHelper

  def create
    auth = request.env["omniauth.auth"]
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    # session[:user_id] = user.id
    set_auth_session(auth)
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    # session[:user_id] = nil
    set_auth_session(nil)
    redirect_to root_url, :notice => "Signed out!"
  end
end
