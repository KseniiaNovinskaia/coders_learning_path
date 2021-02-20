class User < ApplicationRecord
  has_many :paths, through: :step_progresses
  has_many :users_learning_groups, dependent: :destroy
  has_one :codewars_profile, dependent: :destroy
  has_many :step_progresses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
