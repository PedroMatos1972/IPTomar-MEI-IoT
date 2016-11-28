Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
