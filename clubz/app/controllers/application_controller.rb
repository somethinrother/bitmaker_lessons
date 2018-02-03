class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ensure_login
    if !current_user
      flash[:alert] = ["You need to log in first"]
      redirect_to new_session_path
    end
  end

  def ensure_ownership
    @club = Club.find(params[:id])

    if @club.user_id != current_user.id
      flash[:alert] = ["You are not the owner of this club"]
      redirect_to root_path
    end
  end

  def ensure_role
    @club = Club.find(params[:id])
    if !Club.allowed.include?(current_user.role)
      unless @club.user_id == current_user.id
        flash[:alert] = ["You are not the right type of user"]
        redirect_to root_path
      end
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
