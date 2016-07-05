class BotController < ActionController::Base
  def facebook
    query = params[:result]
    city = query[:parameters]['geo-city']
    response =
            {
              "speech": "#{city} is a nice place",
              "displayText": "#{city} is a nice place",
              "data": "",
              "source": "Chatbottest"
            }

    render json: response
  end
end
