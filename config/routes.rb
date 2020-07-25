Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/dashboard'
  post '/posts/create', to: 'posts#create', as: 'posts'

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
