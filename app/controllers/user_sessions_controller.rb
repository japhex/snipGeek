class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
    @snip = Snip.new
  end
  def create
    @user_session = UserSession.new(params[:user_session])
    @snip = Snip.new
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    @snip = Snip.new
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
