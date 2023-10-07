class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :nullify
  has_many :wants, dependent: :destroy



  validates :name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :residence_prefecture, presence: true

end
