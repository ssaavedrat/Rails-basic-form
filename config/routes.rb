Rails.application.routes.draw do
  # Rutas para el controlador journalists
  get 'journalists/index'
  get 'journalists/create'
  get 'journalists/new'

  # Rutas para el controlador posts
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/create' => 'posts#create'

  # Rutas Post
  post 'posts' => 'posts#create'
  post 'journalists' => 'journalists#create'
  # Ruta new como root
  # root 'posts#new'
end
