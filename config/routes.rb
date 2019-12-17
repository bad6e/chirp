Rails.application.routes.draw do
  root "chirps#index"

  get "/index" => "chirps#index"

  namespace :api do
    namespace :v1 do
      resources :chirps, only: [:index]
    end
  end
end
