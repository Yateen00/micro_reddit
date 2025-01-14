class User < ApplicationRecord
  has_many :posts
  has_many :comments, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, format: { with: /\A(?=.*[A-Z])(?=.*\d)(?=.*[[:^alnum:]]).+\z/, message: "must include at least one symbol, one digit, and one capital letter" }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :gender, inclusion: { in: %w[m f t n], message: "%{value} is not a valid gender" }
end
