class Review < ApplicationRecord

  belongs_to :user
  belongs_to :souvenir

  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps

  enum people: { myself: 0, family: 1, relative: 2, friend: 3, company: 4, client: 5, acquaintance: 6,
                 neighborhood: 7, colleague: 8, boss: 9, lover: 10, other: 11
                }

  enum usefulness: { travel: 0, business: 1, homecoming: 2, souvenir: 3, others: 4 }

  validates :review, presence: true

  # =========================== タグ機能 ===================================
  def save_tag(sent_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - sent_tags
    new_tags = sent_tags - current_tags

    old_tags.each do |old|
      self.tags.delete Tag.find_by(tag_name: old)
    end

    new_tags.each do |new|
      new_review_tag = Tag.find_or_create_by(tag_name: new)
      self.tags << new_review_tag
    end
  end
  # ======================================================================

end