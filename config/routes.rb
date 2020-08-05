Rails.application.routes.draw do
  resources :creates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :artists, only: [:show, :new, :create, :edit, :update]
resources :songs, only: [:show, :new, :create, :edit, :update, :index]
resources :genres, only: [:show, :new, :create, :edit, :update]
end
