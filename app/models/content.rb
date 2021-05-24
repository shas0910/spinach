class Content < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :content_type, presence: true
  validates :content_title, presence: true
  balidates :content_text, presence: true
end
