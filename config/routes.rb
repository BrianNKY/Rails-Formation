Rails.application.routes.draw do

  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  root to: 'pages#home'
  
  get '/salut(/:name)', to: 'pages#salut', as: 'salut' # Utilisation d'un paramètre optionnel avec les parenthèses en URL avec la route salut
  resources :posts
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
