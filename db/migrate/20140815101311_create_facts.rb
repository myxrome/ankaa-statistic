class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :session_id
      t.integer :event_id
      t.integer :previous_id
      t.integer :context_id
      t.string :context_type
      t.datetime :happened_at

      t.timestamps
    end

    add_index :facts, :session_id
    add_index :facts, :previous_id
    add_index :facts, [:context_id, :context_type]
  end
end
