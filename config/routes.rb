Rails.application.routes.draw do
  get 'journalists/index'
  get 'journalists/create'
  get 'journalists/new'
  # Rutas get
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/create' => 'posts#create'

  # Rutas Post
  post 'posts' => 'posts#create'
  # Ruta new como root
  # root 'posts#new'
end
