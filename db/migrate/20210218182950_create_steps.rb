class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :url
      t.text :description
      t.string :title
      t.string :step_type
      t.integer :duration
      t.references :path, null: false, foreign_key: true

      t.timestamps
    end
  end
end
