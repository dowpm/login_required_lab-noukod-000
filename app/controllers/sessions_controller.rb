class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    return redirect_to "/login" if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
    # binding.pry
  end

  def destroy
    session.delete :name if current_user
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
