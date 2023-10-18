class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC).limit(3)
    @souvenirs = Souvenir.all
    @review_people = Review.select("people").distinct
    @review_usefulness = Review.select("usefulness").distinct
    @category_names = Souvenir.pluck(:category).uniq
  end

  def about
    @prefectures = Prefecture.all
  end

  def sort

  end
end
