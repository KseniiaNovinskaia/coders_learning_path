class CreateUsersLearningGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :users_learning_groups do |t|
      t.references :user, null: false, foreign_key: true
      t.references :learning_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
