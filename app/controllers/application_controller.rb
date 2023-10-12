class ApplicationController < ActionController::Base

  # =======検索窓用(ransack)記述========
  before_action :search

  def search
    @q = Souvenir.ransack(params[:q])
  end
  # ====================================

end
