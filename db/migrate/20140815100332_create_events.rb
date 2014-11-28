class CreateEvents < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym

    create_table :events do |t|
      t.string :name
      t.string :tag
      t.integer :event_type_id

      t.timestamps
    end

    add_index :events, :tag
  end
end
