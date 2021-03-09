class ChangeColumnInCodewarsProfiles < ActiveRecord::Migration[6.0]
  def change
    rename_column :codewars_profiles, :code_challenges_authored_, :code_challenges_authored
  end
end
