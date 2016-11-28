Rails.application.routes.draw do
<<<<<<< HEAD
#---- users e admin backoffice
  #get 'admin/index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  get 'users/new'
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
# já constuido do anterior das páginas sem autenticação
get 'home/index'
resources :projetos
root "home#index"
resources :users
  #root 'home#index', as: 'home_index'
=======
  get 'home/index'

  resources :projetos
  resources :utilizadors
  resources :utiltypes
  resources :aulas
  resources :tags
  resources :schools
  resources :ficheiros

  root "home#index"
>>>>>>> origin/master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
