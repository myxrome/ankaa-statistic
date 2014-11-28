class CreateEventTypes < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym

    create_table :event_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
