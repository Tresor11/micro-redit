class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.integer :user_id
      t.integer :post_id
      t.text :body
      t.references :user,:post
      t.timestamps
    end
  end
end
