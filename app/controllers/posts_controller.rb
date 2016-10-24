class PostsController < ApplicationController

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
    post = Post.find(params[:id])
    post.destroy
    redirect_to "/home"
  end

end
