class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC)
  end

  def about
    @prefectures = Prefecture.all
  end
end
