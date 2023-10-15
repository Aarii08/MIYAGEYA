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

  # ==========検索窓用(ransack)記述==================
  def self.ransackable_attributes(auth_object = nil)
    ["souvenir_name"]
  end
  # =================================================

  # ===================ソート機能===========================
  def self.sort(selection)
    case selection
    when 'average_star'
      return find(Review.group(:souvenir_id).order(('avg(star) DESC')).pluck(:souvenir_id)) # [4, 1, 3, 5]
    when 'wants'
      return find(Want.group(:souvenir_id).order(('count(souvenir_id) DESC')).pluck(:souvenir_id))
      # return find(Favorite.group(:post_id).order(Arel.sql('count(post_id) desc')).pluck(:post_id))
    when 'reviews'
      return find(Review.group(:souvenir_id).order(('count(souvenir_id) DESC')).pluck(:souvenir_id))
    end
  end
# =============================================================-




end
