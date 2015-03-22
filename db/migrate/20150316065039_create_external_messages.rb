class CreateExternalMessages < ActiveRecord::Migration
  def change
    create_table :external_messages do |t|
      t.string :source
      t.text :message

      t.timestamps
    end
  end
end
