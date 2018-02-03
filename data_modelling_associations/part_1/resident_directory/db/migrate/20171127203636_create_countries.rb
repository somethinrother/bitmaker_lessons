class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :year_founded
      t.string :national_animal

      t.timestamps
    end
  end
end
