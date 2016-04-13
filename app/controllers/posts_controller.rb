class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).page(current_page).per(per_size)
  end

  def show
    @post = Post.find params[:id]
  end
end
