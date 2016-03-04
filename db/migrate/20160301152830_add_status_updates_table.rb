class AddStatusUpdatesTable < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.integer :user_id, null: false
      t.text :body

      t.timestamps null: false
    end
  end
end
