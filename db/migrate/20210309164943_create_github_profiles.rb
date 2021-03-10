class CreateGithubProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :github_profiles do |t|
      t.string :user_name
      t.string :public_repos
      t.string :public_gists
      t.string :followers
      t.string :following
      t.string :joined_github
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
