class AddColumnsToCodewarsProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :codewars_profiles, :honor, :string
    add_column :codewars_profiles, :overall_rank_name, :string
    add_column :codewars_profiles, :overall_score, :string
    add_column :codewars_profiles, :code_challenges_authored_, :string
    add_column :codewars_profiles, :code_challenges_completed, :string
    add_column :codewars_profiles, :first_language_name, :string
    add_column :codewars_profiles, :first_language_rank_name, :string
    add_column :codewars_profiles, :first_language_score, :string
    add_column :codewars_profiles, :second_language_name, :string
    add_column :codewars_profiles, :second_language_rank_name, :string
    add_column :codewars_profiles, :second_language_score, :string
  end
end
