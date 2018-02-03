class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.string :day
      t.string :starting_time
      
      t.timestamps
    end
  end
end
