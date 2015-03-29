class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid
      t.string :brand
      t.string :model
      t.string :release
      t.string :sdk

      t.timestamps
    end

    add_index :devices, :udid
  end
end
