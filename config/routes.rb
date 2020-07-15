Rails.application.routes.draw do
  resources :artists, only:[:index, :new, :edit, :create, :update, :show]
  resources :songs, only:[:index, :new, :edit, :create, :update, :show]
  resources :genres, only:[:index, :new, :edit, :create, :update, :show]
end
