Rails.application.routes.draw do

  root to: 'pages#home'
  
  get '/salut(/:name)', to: 'pages#salut', as: 'salut' # Utilisation d'un paramètre optionnel avec les parenthèses en URL avec la route salut

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
