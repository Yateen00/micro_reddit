class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :reply_to, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: "reply_to_id", dependent: :destroy

  validates :body, presence: true
end
