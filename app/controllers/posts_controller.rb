class PostsController < ApplicationController
  def index
    # Captura todos los datos de la tabla posts
    @post = Post.all
  end

  def create
    # Crea un nuevo registro en la tabla posts
    @post = Post.new(posts_params)
    if @post.save
      redirect_to posts_index_path
    else
      render :new
    end
  end

  def new
    # Captura los datos enviados en el formulario
    @post = Post.new
  end

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
