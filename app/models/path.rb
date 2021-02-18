class Path < ApplicationRecord
  has_many :steps, :step_progresses, :learning_groups
end
