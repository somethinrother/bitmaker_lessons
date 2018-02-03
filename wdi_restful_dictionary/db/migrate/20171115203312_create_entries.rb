class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :word
      t.text :definition
      t.string :language

      t.timestamps
    end
  end
end
