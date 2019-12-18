# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: { message: 'Please provide your full name' }
  validates :password, confirmation: true, length: { minimum: 8, too_short: 'Password must be at least 8 characters long' }
  validates :email, uniqueness: { message: 'This email already exists' }
end
