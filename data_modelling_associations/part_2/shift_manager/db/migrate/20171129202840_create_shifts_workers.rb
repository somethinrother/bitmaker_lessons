class CreateShiftsWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts_workers do |t|

      t.timestamps
    end
  end
end
