class StirUpController < ApplicationController
  def create
    Rails.logger.info params
  end
end
