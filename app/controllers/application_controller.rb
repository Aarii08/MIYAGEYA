class ApplicationController < ActionController::Base

  # =======検索窓用(ransack)記述========
  before_action :search

  private

  def search
    @q = Souvenir.ransack(params[:q])
  end
  # ====================================

end
