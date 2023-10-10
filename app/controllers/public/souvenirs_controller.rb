class Public::SouvenirsController < ApplicationController
  def index
    @souvenirs = Souvenir.all
  end

  def show
    @souvenir = Souvenir.find(params[:id])
    
  end

  def new
    @souvenir = Souvenir.new
  end

  def create
    @souvenir = Souvenir.new(souvenir_params)
    if @souvenir.save
      flash[:notice] = "新規登録完了しました。"
      redirect_to souvenir_path(@souvenir)
    else
      flash[:alert] = "新規登録できませんでした。"
      render :new
    end
  end

  def search_prefecture
  end

  def search_category
  end

  def search_souvenir
  end


  private

  def souvenir_params
    params.require(:souvenir).permit( :souvenir_name, :introduction, :category, :image, :prefecture_id)
  end


end
