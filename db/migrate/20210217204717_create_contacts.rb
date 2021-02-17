class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.integer :contact_id
      t.integer :user_id

      t.timestamps
    end
  end
end
