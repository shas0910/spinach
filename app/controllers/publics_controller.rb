class PublicsController < ApplicationController
  def about
    @user = User.new
    @room = Room.new
    @current_room = Room.new #エラー回避(仮)
  end

  def contact
    @user = User.new
    @room = Room.new
    @current_room = Room.new #エラー回避(仮)
  end
end