class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to room_contents_path(params[:room_id])
  end

  private

  def comment_params
    params
    .require(:comment)
    .permit(:comment_text)
    .merge(user_id: current_user.id, content_id: params[:content_id])
  end

end
