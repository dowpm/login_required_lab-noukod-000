class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    return redirect_to "/login" if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    # redirect_to action: index
    binding.pry
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
