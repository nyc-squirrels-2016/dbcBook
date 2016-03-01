class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, index: true
      t.text :about
      t.string :img_url
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
