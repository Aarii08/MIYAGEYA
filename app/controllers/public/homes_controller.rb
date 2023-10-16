class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC).limit(3)
    
    @souvenirs = Souvenir.all
    @family = Review.where(people: "family")
  end

  def about
    @prefectures = Prefecture.all
  end
  
  def sort
    @family = Review.where(people: "family")
  end
end
