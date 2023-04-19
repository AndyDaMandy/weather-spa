class HomeController < ApplicationController
  require 'json'
  def index
    response = Faraday.get('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=b4d2af7651f1d2fecb58c43621b76ad6')
    @data = JSON.parse(response.body)
  end
end
