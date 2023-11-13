class Public::ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :edit_user, only: [:edit, :update]

  def new
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.new
    @prefectures = Prefecture.all
  end

  def create
    souvenir = Souvenir.find(params[:souvenir_id])
    review = Review.new(review_params)
    review.user_id = current_user.id
    review.souvenir_id = souvenir.id
    tag_list = params[:review][:tag_name].split(nil)  #タグ用記述
    if review.save
      review.save_tag(tag_list)   #タグ保存
      flash[:notice] = "投稿完了しました。"
      redirect_to souvenir_path(souvenir)
    else
      flash[:alert] = "投稿に失敗しました。"
      redirect_back fallback_location: root_path
      # 前の画面に戻る
    end
  end

  def show
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.find(params[:id])
    @prefectures = Prefecture.all
    @review_tags = @review.tags
    # タグ用
  end

  def edit
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.find(params[:id])
    @prefectures = Prefecture.all
    @tag_list = @review.tags.pluck(:tag_name).split(nil)
  end

  def update
    souvenir = Souvenir.find(params[:souvenir_id])
    review = Review.find(params[:id])
    tag_list = params[:review][:tag_name].split(nil)
    if review.update(review_params)
      review.save_tag(tag_list)
      flash[:notice] = "レビューを更新しました。"
      redirect_to souvenir_review_path(souvenir, review)
    else
      flash[:alert] = "レビュー更新できませんでした。"
      redirect_back fallback_location: root_path
      # 前の画面に戻る
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    flash[:alert] = "レビューを削除しました。"
    redirect_to souvenir_path(params[:souvenir_id])
  end

  private

  def review_params
    params.require(:review).permit( :review, :price, :purchase_place, :receive_send, :people, :usefulness, :star)
  end

  def edit_user
    @review = Review.find(params[:id])
    @user = @review.user
    unless @user.id == current_user.id
      flash[:alert] = "レビューを投稿したユーザーのみ編集が可能です。"
      redirect_to souvenir_review_path(@review)
    end
  end

end
