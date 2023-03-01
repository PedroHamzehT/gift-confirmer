Rails.application.routes.draw do
  root 'gifts#index'

  get '/list', to: 'gifts#list'
  post '/gifts', to: 'gifts#create'
end
