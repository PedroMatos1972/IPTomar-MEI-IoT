Rails.application.routes.draw do
  get 'home/index'

  resources :projetos
  resources :utilizadors
  resources :utiltypes
  resources :aulas
  resources :tags
  resources :schools
  resources :ficheiros

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
