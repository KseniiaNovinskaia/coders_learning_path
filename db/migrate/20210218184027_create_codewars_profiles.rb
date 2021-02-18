class CreateCodewarsProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :codewars_profiles do |t|
      t.string :user_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
