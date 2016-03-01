class AddStautsUpdatesLikesTable < ActiveRecord::Migration
  def change
    create_table :status_updates_likes do |t|
      t.integer :user_id, null: false
      t.integer :status_update_id, null: false

      t.timestamps null: false
    end
  end
end
