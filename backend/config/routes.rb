Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do 
    resources :questions
  end

  #this puts everything in the namespace api, which means that everything will be in the format api/questions rather than just questions
  #this also specifies that the default format for requests within this namespace should be JSON 
end
