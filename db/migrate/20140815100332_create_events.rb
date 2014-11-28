class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :tag
      t.integer :event_type_id

      t.timestamps
    end

    add_index :events, :tag
  end
end
