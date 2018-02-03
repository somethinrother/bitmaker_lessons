class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :material
      t.string :tuning

      t.timestamps
    end
  end
end
