class Content < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reads
  has_many :comments

  validates :content_type, presence: true
  validates :content_title, presence: true
  validates :content_text, presence: true
end
