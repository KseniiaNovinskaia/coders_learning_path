class CreateLearningGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_groups do |t|
      t.string :slack_channel
      t.references :path, null: false, foreign_key: true

      t.timestamps
    end
  end
end
