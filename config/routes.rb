Rails.application.routes.draw do
  get '/lists', to: 'lists#index', as: 'all_lists'
  get '/lists/new', to: 'lists#new'
  get '/lists/:id', to: 'lists#show'
  post '/lists', to: 'lists#create'
end