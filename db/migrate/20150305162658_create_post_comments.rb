class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :post_comments, :users
    add_foreign_key :post_comments, :posts
  end
end
