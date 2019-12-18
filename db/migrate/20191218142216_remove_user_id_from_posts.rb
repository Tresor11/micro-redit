class RemoveUserIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posts, :user_id, foreign_key: true
  end
end
