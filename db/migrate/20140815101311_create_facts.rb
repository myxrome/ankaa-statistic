class CreateFacts < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym

    create_table :facts do |t|
      t.integer :session_id
      t.integer :event_id
      t.integer :context_id
      t.string :context_type

      t.timestamps
    end

    add_index :facts, :session_id
    add_index :facts, [:context_id, :context_type]
  end
end
