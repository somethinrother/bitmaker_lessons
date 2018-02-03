class ShiftsWorkers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :shifts, :workers do |t|
      t.integer :shifts_id
      t.integer :workers_id

      t.timestamps
    end
  end
end
