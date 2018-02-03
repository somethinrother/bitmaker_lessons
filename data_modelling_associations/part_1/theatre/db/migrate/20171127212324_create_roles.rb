class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :play_id
      t.string :name
      t.integer :number_of_scenes

      t.timestamps
    end
  end
end
