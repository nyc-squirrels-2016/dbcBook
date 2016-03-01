class AddFriendsTable < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
