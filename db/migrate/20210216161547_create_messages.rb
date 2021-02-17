class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :chatroom_id
      t.string  :emotion
      t.string :text

      t.timestamps
    end
  end
end
