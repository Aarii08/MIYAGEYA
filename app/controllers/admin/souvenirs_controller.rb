class Admin::SouvenirsController < ApplicationController

  def index
    @souvenirs = Souvenir.all
  end

  def new
    @souvenir = Souvenir.new
    @rakuten_image_url = params[:rakuten_image_url]
    @rakuten_url = params[:rakuten_url]
  end

  def create
    souvenir = Souvenir.new(souvenir_params)
    souvenir.rakuten_image_url = params[:souvenir][:rakuten_image_url]
    souvenir.rakuten_url = params[:souvenir][:rakuten_url]
    if souvenir.save
      flash[:notice] = "ミヤゲ登録しました。"
      redirect_to admin_souvenir_path(souvenir)
    else
      flash[:alert] = "ミヤゲ登録できませんでした。"
      render :new
    end
  end

  def show
    @souvenir = Souvenir.find(params[:id])
  end

  def edit
    @souvenir = Souvenir.find(params[:id])
    @rakuten_image_url = params[:rakuten_image_url]
    @rakuten_url = params[:rakuten_url]
  end

  def update
    souvenir = Souvenir.find(params[:id])
    souvenir.rakuten_image_url = params[:souvenir][:rakuten_image_url]
    souvenir.rakuten_url = params[:souvenir][:rakuten_url]
    if souvenir.update(souvenir_params)
      flash[:notice] = "ミヤゲ情報更新しました。"
      redirect_to admin_souvenir_path
    else
      flash[:alert] = "ミヤゲ情報更新できませんでした。"
      render :edit
    end
  end

  def destroy
    @souvenir = Souvenir.find(params[:id])
    @souvenir.destroy
    flash[:alert] = "ミヤゲを削除しました。"
    redirect_to admin_souvenirs_path
  end

  def reviews
    @souvenir = Souvenir.find(params[:souvenir_id])
  end


  private

  def souvenir_params
    params.require(:souvenir).permit(:souvenir_name, :introduction, :category, :average_star, :image, :prefecture_id, :rakuten_image_url, :rakuten_url)
  end

end
