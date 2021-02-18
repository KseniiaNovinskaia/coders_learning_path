class CreateStepProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :step_progresses do |t|
      t.boolean :completion, default: false
      t.references :step, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :path, null: false, foreign_key: true

      t.timestamps
    end
  end
end
