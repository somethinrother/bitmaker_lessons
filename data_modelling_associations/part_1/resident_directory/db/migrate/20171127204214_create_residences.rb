class CreateResidences < ActiveRecord::Migration[5.1]
  def change
    create_table :residences do |t|
      t.integer :city_id
      t.string :address
      t.integer :year_built

      t.timestamps
    end
  end
end
