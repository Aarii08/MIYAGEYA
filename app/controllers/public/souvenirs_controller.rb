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
    @prefectures = Prefecture.all

    # @tag = @review.tag_maps.select(:tag_id)
    # tag_id = tag_map[:tag_id]
    # @review = Tag.find(tag_id).reviews
    # # @review = @souvenir.reviews
    # # @review_tags = @review.tags(:tag_id)


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
    @prefectures = Prefecture.all
    @@souvenir = Souvenir.where(category: "ward")

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
    @prefectures = Prefecture.all
    @review = Review.all
    selection = params[:keyword]
    @souvenirs = Souvenir.sort(selection)
  end


  private

  def souvenir_params
    params.require(:souvenir).permit( :souvenir_name, :introduction, :category, :image, :prefecture_id)
  end


end
