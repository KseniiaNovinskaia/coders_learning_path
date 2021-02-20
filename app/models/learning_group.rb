class LearningGroup < ApplicationRecord
  belongs_to :path
  has_many :users_learning_groups, dependent: :destroy
end
