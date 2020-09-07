Rails.application.routes.draw do
  resources :artists, only: %i[edit update show create new]
  resources :songs, only: %i[index edit update show create new]
  resources :genres, only: %i[edit update show create new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
