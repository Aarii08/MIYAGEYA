class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC).limit(3)
    @souvenirs = Souvenir.all
    @review_all = Review.all

  end

  def about
    @prefectures = Prefecture.all
  end

  def sort

  end
end
