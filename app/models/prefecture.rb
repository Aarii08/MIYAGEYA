class Prefecture < ApplicationRecord

  has_many :souvenirs


  validates :prefecture_name, presence: true

end
