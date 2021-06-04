class ReadsController < ApplicationController
  def create
    @current_room = Room.find(params[:room_id])
    Read.create(user_id: current_user.id, content_id: params[:content_id])
    redirect_to room_contents_path(@current_room)
  end

  def destroy
    @current_room = Room.find(params[:room_id])
    Read.find_by(user_id: current_user.id, content_id: params[:content_id]).destroy
    redirect_to room_contents_path(@current_room)
  end
end
