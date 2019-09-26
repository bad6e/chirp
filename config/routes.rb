Rails.application.routes.draw do
  root 'chat_rooms#show'

  resources :chat_rooms, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :chat_rooms, only: [:show]
      resources :messages, only: [:create]
    end
  end

  mount ActionCable.server => '/cable'
end
