class SessionsController < ApplicationController
  respond_to :json
  def create
    user = User.find_or_create_from_auth(omniauth)
    session[:user_id] = user.id
    if user
      redirect_to user_path(current_user)
    else

    end
  end

  def destroy
    session.clear

    redirect_to root_path
  end

  def show
    respond_with current_user
  end

  protected

  def omniauth
    request.env['omniauth.auth']
  end

end
