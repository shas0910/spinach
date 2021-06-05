class RoomUsersController < ApplicationController

  def destroy
    room_user = RoomUser.find(params[:id])
    content_ids = Content.where(room_id: params[:room_id]).ids
    reads = Read.where(user_id: current_user.id).where(content_id: content_ids)
    room_user.destroy
    reads.destroy_all
    redirect_to root_path
  end

end
