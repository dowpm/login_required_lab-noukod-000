class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to new unless params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to index
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end