class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :contents

  validates :room_name, presence: true
  validate :user_ids_duplicate

  def user_ids_duplicate
    if (user_ids.count - user_ids.uniq.count) > 0
      errors.add(:user_ids, "同じユーザーが登録されています")
    end
  end
end
