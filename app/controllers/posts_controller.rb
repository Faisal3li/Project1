class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # post_params = params.require(:post).permit(:post_title, :post_text, :post_tag_ids)
    @post = current_user.posts.create(post_params)
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:post_title, :post_text, post_tag_ids: [])
  end
end
