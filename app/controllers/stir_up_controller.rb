class StirUpController < ApplicationController
  def create
    request = AlexaRubykit::build_request(params)
    #Rails.logger.debug params
    response = AlexaRubykit::Response.new

    city = request.slots[:city][:value]
    id = WeatherReport::Weather.request_cityid(city)
    if id
      weather = WeatherReport::Weather.new(id)
      weather.tomorrow.date
      response.add_speech("#{city}の明日の天気は#{weather.tomorrow.telop}です")
    else
      response.add_speech("#{city}の天気が調べられませんでした")
    end
    render json: response.build_response
  end
end
