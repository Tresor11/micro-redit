# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :user
  has_many :comments
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :author, presence: { message: 'Please enter a title for your post' }
  validates :body, presence: { message: 'Please type in something' }, length: { minimum: 4, too_short: 'Posts must be longer than 10 characters' }
end
