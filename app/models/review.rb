class Review < ApplicationRecord

  belongs_to :users
  belongs_to :souvenir


  # validates :review, presence: true
  # validates :receive_send, presence: true
  # validates :person, presence: true
  # validates :star, presence: true

end
