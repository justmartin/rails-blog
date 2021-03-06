class RelationshipsController < ApplicationController

  def index
  end

  def create
    Relationship.find_or_create_by(follower_id: current_user.id,
                        followee_id: params[:followee_id])

    redirect_to :back
  end

  def delete
    Relationship.where(follower_id: current_user.id, followee_id: params[:followee_id]).first.try(:destroy)

    redirect_to :back
  end

end
