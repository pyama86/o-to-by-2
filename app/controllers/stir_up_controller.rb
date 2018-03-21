class StirUpController < ApplicationController
  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new
    response.add_speech("あれ？小山さん、まだそこの実装やってるんですか？")
    render json: response.build_response
  end
end
