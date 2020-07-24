class PostsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
    @posts = Post.order("created_at DESC")
  end

  def create
    @post = Post.create(post_params)
  
    if @post.save
      redirect_to root_path
      edirect_to root_path, notice: "La entrada fue creada exitosamente."
    else
      redirect_to :back, alert: "La entrada no lo logró."
    end
  
  end

  def dashboard
    @post = Post.new
  end

  private
  def post_params
    params.require(:post).permit(:title, :image_url, :content)
  end

end
