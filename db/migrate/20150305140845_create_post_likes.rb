class CreatePostLikes < ActiveRecord::Migration
  def change
    create_table :post_likes do |t|
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_likes, :users
    add_foreign_key :post_likes, :posts
  end
end
