class RestoreLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :address, :string
    add_column :locations, :province, :string
    add_column :locations, :number_of_employees, :integer
    add_column :locations, :phone_number, :string

    remove_column :locations, :weather
  end
end
