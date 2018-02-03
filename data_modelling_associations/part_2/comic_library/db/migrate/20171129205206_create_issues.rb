class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.integer :comic_id
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end
