class Review < ApplicationRecord

  belongs_to :user
  belongs_to :souvenir

  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps

  enum people: { family: 0, relative: 1, friend: 2, company: 3, client: 4, acquaintance: 5, neighborhood: 6,
                 colleague: 7, boss: 8, lover: 9, other: 10
                }

  enum usefulness: { travel: 0, business: 1, homecoming: 2, souvenir: 3, others: 4 }


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


  # validates :review, presence: true
  # validates :receive_send, presence: true
  # validates :person, presence: true
  # validates :star, presence: true

end