class StepProgress < ApplicationRecord
  belongs_to :step
  belongs_to :user
  belongs_to :path
end
