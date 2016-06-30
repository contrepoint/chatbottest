Rails.application.routes.draw do
  post '/facebook_complaint' => 'bot#facebook'
end
