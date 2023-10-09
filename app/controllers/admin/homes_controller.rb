class Admin::HomesController < ApplicationController
  def top
    @user = User.all
    @souvenir = Souvenir.all
    @prefecture = Prefecture.all
  end
end
