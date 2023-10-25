class Admin::PrefecturesController < ApplicationController

  def index
    @prefectures = Prefecture.all
    @prefecture = Prefecture.new
  end

  def create
    @prefecture = Prefecture.new(prefecture_params)
    if @prefecture.save
      flash[:notice] = "県名を追加しました。"
      redirect_to admin_prefectures_path
    else
      flash[:alert] = "県名を追加できませんでした。"
      redirect_back fallback_location: root_path
      # 前の画面に戻る
    end
  end

  def edit
    @prefecture = Prefecture.find(params[:id])
  end

  def update
    @prefecture = Prefecture.find(params[:id])
    if @prefecture.update(prefecture_params)
      flash[:notice] = "県名を更新しました。"
      redirect_to  admin_prefectures_path
    else
      flash[:alert] = "県名更新に失敗しました。"
      render :edit
    end
  end

  def destroy
    prefecture = Prefecture.find(params[:id])
    prefecture.destroy
    flash[:alert] = "県名を削除しました。"
    redirect_to admin_prefectures_path
  end


  private

  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name)
  end

end
