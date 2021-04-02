Rails.application.routes.draw do
  root 'static_pages#home'
  get 'world_map',                            to: 'world_map#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
