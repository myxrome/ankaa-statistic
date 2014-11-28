class CreateFactDetails < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym

    create_table :fact_details do |t|
      t.integer :fact_id
      t.integer :order
      t.datetime :happened_at
      t.string :external_data

      t.timestamps
    end

    add_index :fact_details, :fact_id
    add_index :fact_details, :external_data
  end
end
