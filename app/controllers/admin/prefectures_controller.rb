class Admin::PrefecturesController < ApplicationController
  def index
    @prefectures = Prefecture.all
    @prefecture = Prefecture.new
  end

  def create
    prefecture = Prefecture.new(prefecture_params)
    if prefecture.save
      redirect_to admin_prefectures_path, notice: "県名を追加しました。"
    else
      redirect_to admin_prefectures_path, alert:  "県名を追加できませんでした。"
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
    redirect_to admin_prefectures_path
  end


  private

  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name)
  end

end
