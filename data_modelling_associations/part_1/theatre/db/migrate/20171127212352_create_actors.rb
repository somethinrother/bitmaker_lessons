class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.integer :play_id
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
