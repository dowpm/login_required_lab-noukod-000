class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to(action: new)
    end
    session[:name] = params[:name]
    redirect_to action: index
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
