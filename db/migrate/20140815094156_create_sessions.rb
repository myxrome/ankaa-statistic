class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :device_id
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :status

      t.timestamps
    end

    add_index :sessions, :device_id
    add_index :sessions, [:started_at, :finished_at]
    add_index :sessions, [:status]
  end
end
