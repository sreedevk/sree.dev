Rails.application.routes.draw do
  root to: 'static_pages#index'
  get '/about', to: 'static_pages#about'
  post '/messages', to: 'static_pages#receive_message'
end
