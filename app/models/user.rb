class User < ApplicationRecord
  require 'open-uri'

  has_many :paths, through: :step_progresses
  has_many :step_progresses, dependent: :destroy
  has_many :users_learning_groups, dependent: :destroy
  has_one :codewars_profile, dependent: :destroy
  has_many :step_progresses
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, uniqueness: true

  def user_github_data
    url = 'https://api.github.com/users/Kimon-Haars'
    user_serialized = open(url).read
    JSON.parse(user_serialized)
  end

  def user_codewars_data
    url = 'https://www.codewars.com/api/v1/users/Kimon-Haars'
    user_serialized = open(url).read
    JSON.parse(user_serialized)
  end

end
