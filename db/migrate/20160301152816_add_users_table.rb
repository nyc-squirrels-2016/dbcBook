class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: true, unique: true
      t.string :name, null: false
      t.text :about
      t.string :img_url
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
