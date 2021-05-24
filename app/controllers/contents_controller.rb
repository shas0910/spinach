class ContentsController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @content = Content.new
  end

  def create
    @room = Room.find(params[:room_id])
    @content = Content.new(content_params)
    if @content.save
      redirect_to room_contents_path(@room)
    else
      render :index
    end
  end

  private
  def content_params
    params
    .require(:content)
    .permit(:content_type, :content_title, :content_text)
    .merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
