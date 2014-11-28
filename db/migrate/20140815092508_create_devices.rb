class CreateDevices < ActiveRecord::Migration
  def change
    ActiveRecord::Base.establish_connection "statistic_#{Rails.env}".to_sym

    create_table :devices do |t|
      t.string :udid

      t.timestamps
    end

    add_index :devices, :udid
  end
end
