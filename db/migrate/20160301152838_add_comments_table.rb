class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :status_update_id, null: false
      t.integer :user_id, null: false
      t.text :body

      t.timestamps null: false
    end
  end
end
