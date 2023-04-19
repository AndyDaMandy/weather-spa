class HomeController < ApplicationController
  require 'json'
  def index
    if params[:search]
      #request.variant = :turbo if request.headers["Turbo-Frame"].present?
      search = params[:search].strip.split(',').join(',')
      response = Faraday.get("https://api.openweathermap.org/data/2.5/weather?q=#{search}k&APPID=#{ENV['openweather_api_key']}")
      @data = JSON.parse(response.body)
      respond_to do |format|
        format.html 
        format.turbo_stream
      end
    else
      @data
    end
    #@data = response.body
    #render json: @data
  end
end
