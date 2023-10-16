class Public::SouvenirsController < ApplicationController

  def index
    @souvenirs = Souvenir.all
    @prefectures = Prefecture.all
    @review = Review.all
    selection = params[:keyword]
    @souvenir = Souvenir.sort(selection)
  end

  def show
    @souvenir = Souvenir.find(params[:id])
    @souvenir = Souvenir
    @prefectures = Prefecture.all
  end

  def new
    @souvenir = Souvenir.new
    @prefectures = Prefecture.all
  end

  def create
    souvenir = Souvenir.new(souvenir_params)
    if souvenir.save
      flash[:notice] = "新規登録完了しました。"
      redirect_to souvenir_path(souvenir)
    else
      flash[:alert] = "新規登録できませんでした。"
      render :new
    end
  end

  def search_prefecture
    @prefectures = Prefecture.all
    @prefecture = Prefecture.find(params[:id])
    @souvenirs = @prefecture.souvenirs
  end

  def search_category
    people = params[:people]
    usefulness = params[:usefulness]
    if people != nil
      @souvenirs = Souvenir.joins(:reviews).where(reviews: { people: people }).distinct
      # souvenirとreviewを結合し、peopleカラムから重複がないように　@souvenirs　に代入
    end
    if usefulness != nil
      @souvenirs = Souvenir.joins(:reviews).where(reviews: { usefulness: usefulness }).distinct
    end
  end

  def search_souvenir
    @prefectures = Prefecture.all
    @q = Souvenir.ransack(params[:q])
    @souvenirs = @q.result
  end

  def search_tag
    @tag_list = Tag.all
    @tag = Tag.find(params[:tag_id])
    @review = @tag.reviews.all
    @prefectures = Prefecture.all
    selection = params[:keyword]
    @souvenir = Souvenir.sort(selection)
  end

  def search_sort
    tag_name = params[:tag_name]
    @souvenirs = Souvenir.joins(reviews: :tags).where(tags: { tag_name: tag_name }).distinct
    # souvenirとreview, tagを結合し、tag_nameに上のtag_nameを重複がないように　@souvenirs　に代入
  end


  private

  def souvenir_params
    params.require(:souvenir).permit( :souvenir_name, :introduction, :category, :image, :prefecture_id)
  end


end
