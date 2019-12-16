class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: { message: 'Please enter a title for your post' }
  validates :body, presence: { message: 'Please type in something' }, length: { minimum: 10, too_short: 'Posts must be longer than 10 characters' }
end
