class AddCommentsLikesTable < ActiveRecord::Migration
  def change
    create_table :comments_likes do |t|
      t.integer :user_id, null: false
      t.integer :comment_id, null: false
      t.timestamps
    end
  end
end
