class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :nullify
  has_many :wants, dependent: :destroy

  validates :name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :residence_prefecture, presence: true


  # --------- ゲストユーザー 用 --------------------------
  GUEST_USER_EMAIL = "guest@guest.com"

  def self.guest
    find_or_create_by!(email: GUEST_USER_EMAIL) do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲストユーザー"
      user.nickname = "ゲスト"
      user.residence_prefecture = "茨城県"
    end
  end

  def guest_user?
    email == GUEST_USER_EMAIL
  end

  # -------------------------------------------------------

end
