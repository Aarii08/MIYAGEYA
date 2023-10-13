class Review < ApplicationRecord

  belongs_to :user
  belongs_to :souvenir

  # Gem: acts_as_taggableの導入
  acts_as_taggable_on :tags


  # validates :review, presence: true
  # validates :receive_send, presence: true
  # validates :person, presence: true
  # validates :star, presence: true

end