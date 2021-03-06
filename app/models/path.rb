class Path < ApplicationRecord
  has_one_attached :photo # cloudinary configuration with active storage
  has_many :steps, dependent: :destroy
  has_many :step_progresses, dependent: :destroy
  has_many :learning_groups, dependent: :destroy
  has_one :chatroom, dependent: :destroy

  def duration
    hourly_sum = 0
    steps.each do |s|
      hourly_sum += s.duration
    end
    hourly_sum
  end

  def duration_hours
    self.duration / 60
  end

  def duration_minutes
    self.duration % 60
  end
end
