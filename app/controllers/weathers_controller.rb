class WeathersController < ApplicationController
  def show
    @response = HTTParty.get("https://query.yahooapis.com/v1/public/yql?q=select%20item.condition%20from%20weather.forecast%20where%20woeid%20%3D%202450080&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
    @date = @response["query"]["results"]["channel"]["item"]["condition"]["date"]
    @temp = @response["query"]["results"]["channel"]["item"]["condition"]["temp"]
    @text = @response["query"]["results"]["channel"]["item"]["condition"]["text"]
  end
end
