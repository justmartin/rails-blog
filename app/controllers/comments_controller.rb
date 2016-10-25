class CommentsController < ApplicationController

  def index
  end

  def create
    comment = Comment.create(content: params[:comment][:content],
                             user_id: current_user.id,
                             post_id: params[:post_id],
                            )

    redirect_to :back
  end

end
