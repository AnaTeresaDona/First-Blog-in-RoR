class PostsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
    @posts = Post.order(id: :desc)
  end

  def dashboard
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)

    if @post.save(post_params)
    else
      render :create
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :image_url, :content)
  end

end
