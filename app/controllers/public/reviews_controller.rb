class Public::ReviewsController < ApplicationController

  def new
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.new
  end

  def create
    @souvenir = Souvenir.find(params[:souvenir_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.souvenir_id = @souvenir.id
    if @review.save
      flash[:notice] = "投稿完了しました。"
      redirect_to souvenir_path(@souvenir)
    else
      flash[:alert] = "投稿に失敗しました。"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit( :review, :price, :purchase_place, :receive_send, :person, :porpose, :star)
  end

end
