class PublicsController < ApplicationController
  def about
    @room = Room.new
  end

  def contact
    @room = Room.new
  end
end