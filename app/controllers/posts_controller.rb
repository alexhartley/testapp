class PostsController < ApplicationController
  def index
    @posts = Post.all
    @value = params[:f]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    if @post.save
      redirect_to 'index'
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
