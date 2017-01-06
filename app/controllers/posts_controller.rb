class PostsController < ApplicationController
  def index
    @component_name = "Posts"
    @data = Post.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
