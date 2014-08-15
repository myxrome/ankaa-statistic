class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid

      t.timestamps
    end

    add_index :devices, :udid
  end
end
