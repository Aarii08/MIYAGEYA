class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @user = User.all
    @souvenir = Souvenir.all
    @prefecture = Prefecture.all
  end
end
