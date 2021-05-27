class PublicsController < ApplicationController
  def about
    @room = Room.new
  end

end