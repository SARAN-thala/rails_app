Rails.application.routes.draw do
  # resources :books do
  #   resources :comments
  # end
  resources :books
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
