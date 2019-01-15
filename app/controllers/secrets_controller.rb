class SecretsController < ApplicationController
  def show
    redirect_to controller: 'sessions', action: 'new'
  end
end
