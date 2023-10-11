class Public::HomesController < ApplicationController
  def top
     @reviews = Review.order(created_at: :DESC)
  end

  def about
  end
end
