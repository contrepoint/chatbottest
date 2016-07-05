class Weather
  include HTTParty
  base_uri 'api.openweathermap.org'

  def self.weather_for_city(city)
    @api_key = ENV['WEATHER_API_KEY']
    self.get("/data/2.5/weather",
    query: {
      q: city,
      units: 'metric',
      appid: @api_key
    })
  end

end
