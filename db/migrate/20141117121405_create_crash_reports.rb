class CreateCrashReports < ActiveRecord::Migration
  def change
    create_table :crash_reports do |t|
      t.string :name
      t.string :version
      t.string :exception
      t.string :message
      t.string :stacktrace
      t.string :hash
      t.datetime :happened_at

      t.timestamps
    end

    add_index :crash_reports, [:hash, :happened_at]
  end
end
