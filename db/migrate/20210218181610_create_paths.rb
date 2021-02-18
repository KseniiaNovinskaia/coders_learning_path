class CreatePaths < ActiveRecord::Migration[6.0]
  def change
    create_table :paths do |t|
      t.string :name
      t.text :description
      t.string :requirement
      t.string :language

      t.timestamps
    end
  end
end
