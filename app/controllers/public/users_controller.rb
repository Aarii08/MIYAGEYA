class Public::UsersController < ApplicationController
  before_action :set_current_user

  def show
  end

  def edit
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
  end

  def want
  end

  private

  def set_current_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :residence_prefecture, :is_deleted)
  end

end
