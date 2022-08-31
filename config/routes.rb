Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/aquaria', to: 'aquaria#index'
  get '/aquaria/:id', to: 'aquaria#show'
  get '/shrimps', to: 'shrimps#index'
end
