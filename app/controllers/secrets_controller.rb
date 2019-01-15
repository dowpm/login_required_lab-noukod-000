class SecretsController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to new unless params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to index
  end
end
