class Public::ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

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
      render :new
    end
  end

  def show
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.find(params[:id])
    @prefectures = Prefecture.all
    # タグ用
    @review_tags = @review.tags
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
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to souvenir_path(params[:souvenir_id])
  end

  private

  def review_params
    params.require(:review).permit( :review, :price, :purchase_place, :receive_send, :people, :usefulness, :star)
  end

end
