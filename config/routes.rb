Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
      namespace :v1 do
        resources :users
        resources :gifs
        resources :favorites

        get '/trending', to: "gifs#get_trending"
        get '/more_trending', to: "gifs#get_more_trending"
      end
    end

end
