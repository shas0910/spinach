class ReadsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    Read.create(user_id: current_user.id, content_id: params[:content_id])
    redirect_to room_contents_path(@room)
  end

  def destroy
    @room = Room.find(params[:room_id])
    Read.find_by(user_id: current_user.id, content_id: params[:content_id]).destroy
    redirect_to room_contents_path(@room)
  end
end
