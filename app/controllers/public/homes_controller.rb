class Public::HomesController < ApplicationController
  before_action :prefecture_show

  def top
    @reviews = Review.order(created_at: :DESC).limit(3)
    @souvenirs = Souvenir.all
    @review_people = Review.select("people").distinct
    @review_usefulness = Review.select("usefulness").distinct
    @category_names = Souvenir.pluck(:category).uniq
  end

  def about
  end

  def search_prefecture
    @prefecture = Prefecture.find(params[:id])
    @souvenirs = @prefecture.souvenirs
  end

  def search_souvenir
    @q = Souvenir.ransack(params[:q])
    @souvenirs = @q.result
  end

  def search_tag
    @tag_name = params[:tag_name]
    @souvenirs = Souvenir.joins(reviews: :tags).where(tags: { tag_name: @tag_name }).distinct
    # souvenirとreview, tagを結合し、tag_nameに上のtag_nameを重複がないように　@souvenirs　に代入
  end

  def search_column
    people = params[:people]
    usefulness = params[:usefulness]
    if people != nil
      @souvenirs = Souvenir.joins(:reviews).where(reviews: { people: people }).distinct
      # souvenirとreviewを結合し、peopleカラムから重複がないように　@souvenirs　に代入
    end
    if usefulness != nil
      @souvenirs = Souvenir.joins(:reviews).where(reviews: { usefulness: usefulness }).distinct
    end
    @review_people = Review.where(people: people).distinct
    @review_usefulness = Review.where(usefulness: usefulness).distinct
  end

  def search_category
    if params[:name]
      @souvenirs = Souvenir.where(category: params[:name] )
    else
       @souvenirs = Souvenir.all
    end
    @review = Review.all
  end

  def search_review_tag
    @tag_name = params[:tag_name]
    @reviews = Review.joins(:tags).where(tags: { tag_name: @tag_name }).distinct
  end

  def search_review_column
    people = params[:people]
    usefulness = params[:usefulness]
    if people != nil
      @reviews = Review.where(people: people).distinct
    end
    if usefulness != nil
      @reviews = Review.where(usefulness: usefulness).distinct
    end
  end

  private

  def prefecture_show
    @prefectures = Prefecture.all
  end

end
