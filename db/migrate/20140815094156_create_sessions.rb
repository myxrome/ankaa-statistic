class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :device_id

      t.timestamps
    end

    add_index :sessions, :device_id
  end
end
