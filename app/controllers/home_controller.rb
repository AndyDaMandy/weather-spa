class HomeController < ApplicationController
  require 'json'
  def index
    response = Faraday.get('https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=ENV['']')
    @data = JSON.parse(response.body)
  end
end
