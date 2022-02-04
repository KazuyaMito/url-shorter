Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'url#index'
  post '/', to: 'url#create'
  get '/g/:abbreviated', to: 'generated_url#action'
end
