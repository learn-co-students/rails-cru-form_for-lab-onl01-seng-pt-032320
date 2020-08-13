Rails.application.routes.draw do
  resources :artists, only: [:create, :edit, :new, :update, :show]
  resources :songs, only: [:create, :edit, :new, :update, :show]
  resources :genres, only: [:create, :edit, :new, :update, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
