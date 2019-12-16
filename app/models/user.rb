class User < ApplicationRecord
  has_many :posts
  validates :name, presence: { message: 'Please provide your full name' }
  validates :password, confirmation: true, length: { minimum: 8, too_short: 'Password must be at least 8 characters long' }
  validates :email, uniqueness: true
  validates :user_name, uniqueness: { case_senstive: false }
end
