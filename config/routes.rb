Rails.application.routes.draw do
  resources :albums
  resources :photos

  root 'site#index'
    get '/about' => 'site#about'
end
