class PostsController < ApplicationController
  before_action :set_post, only: [:delete, :show]

  def index
  end

  def create
    Post.create(title: params["post"]["title"],
                content: params["post"]["content"],
                user_id: current_user.id)
    redirect_to "/home"
  end

  def delete
    p params.inspect
    @post.destroy
    redirect_to "/home"
  end

  def show
    @comments = @post.comments
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

end
