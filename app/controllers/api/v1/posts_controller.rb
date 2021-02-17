class Api::V1::PostsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.find(params[:id])
  end
  def create
    puts @post_params
    @post = Post.new(post_params)
    if @post.save
      render "api/v1/posts/create.json"
      # render_success(@post)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :author, :media)
    end
end
