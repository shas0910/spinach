class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :room_id, uniqueness: { message: "同じユーザーが登録されています", scope: [:user_id] }
end
