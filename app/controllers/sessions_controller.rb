class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to(action: new) if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    render action: index
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
