Rails.application.routes.draw do
  resources :albums

  root 'site#index'
    get '/about' => 'site#about'
end
