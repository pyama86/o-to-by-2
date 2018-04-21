class StirUpController < ApplicationController
  def create
    request = AlexaRubykit::build_request(params)
    #Rails.logger.debug params
    response = AlexaRubykit::Response.new
    response.add_speech("あれ？#{request.slots[:city][:value]}、まだそこの実装やってるんですか？")
    render json: response.build_response
  end
end
