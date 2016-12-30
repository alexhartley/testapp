class PostsController < ApplicationController
  def index
    @posts = Post.all
    @value = params[:f]
    respond_to do |format|
      format.html
      format.json { render json: @posts.to_json }
      format.xml { render partial: 'show_format' }
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to posts_path
    else
      render action: "new"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
