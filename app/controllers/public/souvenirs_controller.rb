class Public::SouvenirsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    if params[:keyword]
      #================= ソート機能 ================
      selection = params[:keyword]
      @souvenirs = Souvenir.sort(selection)
      #=============================================
    else
      @souvenirs = Souvenir.all
    end
    @prefectures = Prefecture.all
    @review = Review.all
  end

  def show
    @souvenir = Souvenir.find(params[:id])
    @prefectures = Prefecture.all
  end

  def new
    @souvenir = Souvenir.new
    @prefectures = Prefecture.all
    @rakuten_image_url = params[:rakuten_image_url] #====== 楽天画像取得
    @rakuten_url = params[:rakuten_url]   #================ 楽天URL取得
  end

  def create
    souvenir = Souvenir.new(souvenir_params)
    souvenir.rakuten_image_url = params[:souvenir][:rakuten_image_url]  #==== 楽天画像
    souvenir.rakuten_url = params[:souvenir][:rakuten_url]  #================ 楽天URL
    if souvenir.save
      flash[:notice] = "新規登録完了しました。"
      redirect_to souvenir_path(souvenir)
    else
      flash[:alert] = "新規登録できませんでした。"
      render :new
    end
    @prefectures = Prefecture.all
  end

  private

  def log_in_user
    unless user_signed_in?
      flash[:alert] = "アクセスできません。"
      redirect_to souvenirs_path
    end
  end

  def souvenir_params
    params.require(:souvenir).permit( :souvenir_name, :introduction, :category, :image, :prefecture_id, :rakuten_image_url, :rakuten_url)
  end


end
