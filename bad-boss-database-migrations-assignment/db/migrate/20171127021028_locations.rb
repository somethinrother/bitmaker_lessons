class Locations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :province
      t.integer :number_of_employees
      t.string :phone_number
    end
  end
end
