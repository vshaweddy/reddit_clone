class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :subreddit

      t.timestamps null: false
    end
  end
end
