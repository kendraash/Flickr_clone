class PostsController < ApplicationController

  before_filter :authenticate_user!, except: [ :index, :show ]

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.user = current_user
    if @post.save
      redirect_to user_path(@post.user_id)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
