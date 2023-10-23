class Public::UsersController < ApplicationController
  before_action :set_current_user
  before_action :ensure_guest_user, only: [:edit, :update]

  def show
    @prefectures = Prefecture.all
  end

  def edit
    @prefectures = Prefecture.all
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報更新しました。"
      redirect_to user_path
    else
      flash[:alert] = "ユーザー情報の更新に失敗しました。"
      render :edit
    end
  end

  def confirm
  end

  def withdrawal
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会完了しました。"
    redirect_to root_path
  end

  def review
    @review = Review.all
    @prefectures = Prefecture.all
  end

  def want
    @want = Want.all
    @prefectures = Prefecture.all
  end

  def users_reviews
    @prefectures = Prefecture.all
    @user = User.find(params[:id])
  end

  private

  def set_current_user
    @user = current_user
  end

  def ensure_guest_user
    if @user.guest_user?
      redirect_to user_path, alert: "ゲストユーザーはプロフィール編集画面に遷移できません。"
    end
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :residence_prefecture, :is_deleted)
  end

end
