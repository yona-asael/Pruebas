class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :name
      t.string :description
      t.integer :vote
      t.timestamps
    end
  end
end
