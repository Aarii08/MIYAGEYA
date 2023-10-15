class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC).limit(3)
  end

  def about
    @prefectures = Prefecture.all
  end
end
