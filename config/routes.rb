Rails.application.routes.draw do
  root to: 'static_pages#index'
  post '/messages', to: 'static_pages#receive_message'
end
