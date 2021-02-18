class Path < ApplicationRecord
  has_many :steps, :step_progresses, :learning_groups
  has_many :users, through: :step_progresses
end
