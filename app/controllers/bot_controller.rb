class BotController < ActionController::Base
  def facebook
    query = params[:result]
    city = query[:parameters]['geo-city']
    response =
            {
              "speech": "#{city} is a nice place",
              "displayText": "#{city} is a nice place",
              "data": "",
              "contextOut": [{"name":"weather", "lifespan":2, "parameters":{"city":"#{city}"}}],
              "source": "Chatbottest"
            }

    render json: response
  end
end
