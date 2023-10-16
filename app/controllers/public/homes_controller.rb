class Public::HomesController < ApplicationController
  def top
    @prefectures = Prefecture.all
    @reviews = Review.order(created_at: :DESC).limit(3)

    # @souvenir = Souvenir.const_get('souvenirs'.classify).columns['category']
    @souvenir = Souvenir.where(category: "word")



  end

  def about
    @prefectures = Prefecture.all
  end

  def sort

  end
end
