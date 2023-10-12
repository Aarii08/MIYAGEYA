class Souvenir < ApplicationRecord

  belongs_to :prefecture
  has_many :reviews, dependent: :nullify
  has_many :wants, dependent: :destroy

  has_one_attached :image

  enum category: { food: 0, goods: 1 }


  validates :souvenir_name, presence: true
  validates :introduction, presence: true
  validates :category, presence: true


  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no-image.png')
      image.attach(io: File.open(file_path), filename: 'no-image.png', content_type: 'image/jpeg')
    end
    image
  end

  # -------ほしい！機能用メソッド-------
  def wanted_by?(user)
    wants.exists?(user_id: user)
  end
  # ------------------------------------

end
