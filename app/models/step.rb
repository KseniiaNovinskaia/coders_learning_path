class Step < ApplicationRecord
  belongs_to :path
  has_many :step_progresses

  def duration_string
    duration = self.duration
    hours = duration / 60
    minutes = duration % 60
    duration_string = ""
    duration_string += "#{hours}h" unless hours.zero?
    duration_string += " #{minutes}m" unless minutes.zero?
    duration_string
  end

  def external_source_icon
    # ToDo: return matching logo based on step's type
  end


end
