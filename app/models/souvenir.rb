class Souvenir < ApplicationRecord

  belongs_to :prefecture
  has_many :reviews, dependent: :nullify
  has_many :wants, dependent: :destroy

  has_one_attached :souvernir_image

  enum category: { food: 0, goods: 1 }


  validates :souvenir_name, presence: true
  validates :inrtoduction, presence: true
  validates :category, presence: true

end
