class StirUpController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    Rails.logger.info params
  end

end
