class UsersLearningGroup < ApplicationRecord
  belongs_to :user
  belongs_to :learning_group
end
