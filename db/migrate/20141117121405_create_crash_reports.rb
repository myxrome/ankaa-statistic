class CreateCrashReports < ActiveRecord::Migration
  def change
    create_table :crash_reports do |t|
      t.integer :device_id
      t.string :name
      t.string :version
      t.string :exception
      t.string :cause
      t.text :stacktrace
      t.string :key
      t.datetime :happened_at

      t.timestamps
    end

    add_index :crash_reports, :device_id
    add_index :crash_reports, [:key, :happened_at]
  end
end
