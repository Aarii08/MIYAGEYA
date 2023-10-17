class Public::SouvenirsController < ApplicationController

  def index
    @souvenirs = Souvenir.all
    @prefectures = Prefecture.all
    @review = Review.all
  end

  def show
    @souvenir = Souvenir.find(params[:id])
    # @souvenir_find = @souvenir.select(:tag_name).distinct
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
    
    
    
    # ===========================================================
    food = params[:food]
    goods = params[:goods]


    if food.present?
      @souvenirs = Souvenir.where( category: "food" ).distinct
    else goods.present?
      @souvennirs = Souvenir.where( caregory: "goods").distinct
    end
    # ===========================================================



    @prefectures = Prefecture.all
    @review = Review.all


  end

  def search_souvenir
    @prefectures = Prefecture.all
    @q = Souvenir.ransack(params[:q])
    @souvenirs = @q.result
  end

  def search_tag
    @tag_name = params[:tag_name]
    @souvenirs = Souvenir.joins(reviews: :tags).where(tags: { tag_name: @tag_name }).distinct
    # souvenirとreview, tagを結合し、tag_nameに上のtag_nameを重複がないように　@souvenirs　に代入
    @prefectures = Prefecture.all
  end

  def search_sort
    @prefectures = Prefecture.all
    @review = Review.all
    # ==== ソート機能 ================
    selection = params[:keyword]
    @souvenirs = Souvenir.sort(selection)
    # ================================
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
    @prefectures = Prefecture.all
    @review = Review.all
  end


  private

  def souvenir_params
    params.require(:souvenir).permit( :souvenir_name, :introduction, :category, :image, :prefecture_id)
  end


end
