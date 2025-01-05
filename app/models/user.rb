class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, format: { with: /\A(?=.*[A-Z])(?=.*\d)(?=.*[[:^alnum:]]).+\z/, message: "must include at least one symbol, one digit, and one capital letter" }
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :gender, presence: true, inclusion: { in: %w[m f t n], message: "%{value} is not a valid gender" }
end
