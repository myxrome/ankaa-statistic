class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :cause_id
      t.string :cause_type
      t.integer :event_id
      t.integer :context_id
      t.string :context_type
      t.string :external_context

      t.timestamps
    end

    add_index :facts, [:cause_id, :cause_type]
    add_index :facts, [:context_id, :context_type]
    add_index :facts, :external_context
  end
end
