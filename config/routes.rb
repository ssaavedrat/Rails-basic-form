Rails.application.routes.draw do
  # Rutas get
  get 'index' => 'posts#index'
  get 'create' => 'posts#create'
  get 'new' => 'posts#new'
  # Rutas Post
  post 'posts' => 'posts#create'
  # Ruta new como root
  root 'posts#new'
end
