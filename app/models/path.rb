class Path < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :step_progresses, dependent: :destroy
  has_many :learning_groups, dependent: :destroy

  def duration
    hourly_sum = 0
    steps.each do |s|
      hourly_sum += s.duration
    end
    hourly_sum
  end
end
