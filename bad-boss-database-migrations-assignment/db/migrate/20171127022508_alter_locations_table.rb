class AlterLocationsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :address
    remove_column :locations, :city
    remove_column :locations, :province
    remove_column :locations, :number_of_employees
    remove_column :locations, :phone_number

    add_column :locations, :city, :string
    add_column :locations, :weather, :string
  end
end
