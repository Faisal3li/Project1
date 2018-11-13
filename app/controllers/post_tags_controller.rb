class PostTagsController < ApplicationController
  def show
    @posttag = PostTag.find_by(id: params[:id])
  end

  def index
    @posttags = PostTag.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
