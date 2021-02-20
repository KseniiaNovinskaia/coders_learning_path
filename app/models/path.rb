class Path < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :step_progresses, dependent: :destroy
  has_many :learning_groups, dependent: :destroy
end
