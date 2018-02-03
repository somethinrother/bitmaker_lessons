class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      flash[:notice] = "Log in successful!"
      session[:user_id] = user.id
      redirect_to pictures_url
    else
      flash[:error] = "Log in failed."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "See you next time!"
    redirect_to pictures_url
  end
end
