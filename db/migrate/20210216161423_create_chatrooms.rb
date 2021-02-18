class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
      t.integer :user_id
      t.integer :contact_id
      t.string :name
      t.string :name2

      t.timestamps
    end
  end
end
