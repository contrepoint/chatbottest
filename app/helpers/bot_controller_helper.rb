module BotControllerHelper
  def build_weather_text(weather)
    temperature = weather['main']['temp']
    max_temperature = weather['main']['temp_max']
    min_temperature = weather['main']['temp_min']
    humidity = weather['main']['humidity']

    "Right now, it is #{temperature} degrees.
    it will have a high of #{max_temperature}
    and a low of #{min_temperature}. humidity
    is at #{humidity}%"

  end
end
