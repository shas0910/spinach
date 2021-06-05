class RemoveRoomDescFromRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :room_desc, :text
  end
end
