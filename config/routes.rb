Rails.application.routes.draw do

  get 'posts/index'
  root to: 'pages#home'
  
  get '/salut(/:name)', to: 'pages#salut', as: 'salut' # Utilisation d'un paramètre optionnel avec les parenthèses en URL avec la route salut
  get '/articles', to: 'posts#index', as: 'posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
