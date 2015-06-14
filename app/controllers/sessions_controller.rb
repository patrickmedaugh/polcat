class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth(omniauth)
    session[:user_id] = user.id
    if user
      redirect_to root_path
    else
      redirect_to hell
    end
  end

  def destroy
    session.clear

    redirect_to root_path
  end

  protected

  def omniauth
    request.env['omniauth.auth']
  end

end
