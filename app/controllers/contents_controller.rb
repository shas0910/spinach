class ContentsController < ApplicationController
  def index
    @current_room = Room.find(params[:room_id])
    @content = Content.new
    @contents = @current_room.contents.includes(:user)
    @comment = Comment.new
    @room_user = RoomUser.where(user_id: current_user.id).where(room_id: params[:room_id])
  end

  def create
    @current_room = Room.find(params[:room_id])
    @room_user = RoomUser.where(user_id: current_user.id).where(room_id: params[:room_id])
    @content = Content.new(content_params)
    if @content.save
      redirect_to room_contents_path(@current_room)
    else
      @contents = @current_room.contents.includes(:user)
      render :index
    end
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to room_contents_path(params[:room_id])
  end

  private
  def content_params
    params
    .require(:content)
    .permit(:content_type, :content_title, :content_text)
    .merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
