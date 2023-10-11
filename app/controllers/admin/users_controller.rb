class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報更新しました。"
      redirect_to admin_user_path(@user)
    else
      flash[:alert] = "ユーザー情報を更新できませんでした。"
      render :edit
    end
  end

  def review
    @user = User.find(params[:id])
    @review = Review.all
    @souvenir = Souvenir.all
  end

  def want
    @user = User.find(params[:id])
    @want = Want.all
    @souvenir = Souvenir.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :residence_prefecture, :is_deleted)
  end

end
