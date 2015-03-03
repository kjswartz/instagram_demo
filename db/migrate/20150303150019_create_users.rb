class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :username
      t.string :name
      t.string :website
      t.string :bio

      t.timestamps null: false
    end
  end
end
