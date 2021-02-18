class Step < ApplicationRecord
  belongs_to :path
  has_many :step_progresses
end
