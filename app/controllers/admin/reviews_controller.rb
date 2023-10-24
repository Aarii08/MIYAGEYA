class Admin::ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def show
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.find(params[:id])
    @review_tags = @review.tags
    @tag_list = @review.tags.pluck(:tag_name).split(nil)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "レビュー情報を更新しました。"
      redirect_to reviews_admin_souvenirs_path
    else
      flash[:alert] = "レビュー情報を更新できませんでした。"
      render :show
    end

  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    flash[:alert] = "レビューを削除しました。"
    redirect_to request.referer
  end


  private

  def review_params
    params.require(:review).permit(:review, :price, :purchase_place, :receive_send, :person, :purpose, :star)
  end

end
