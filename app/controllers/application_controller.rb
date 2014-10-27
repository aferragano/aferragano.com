class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])

    if @user
      session[:id] = @user.id
      redirect_to '/'
    else
      flash[:error] = "Login failed, please try again."
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  def current_user
    @user_session = User.find_by_id(session[:id])
  end
end
