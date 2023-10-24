class ApplicationController < ActionController::Base

  # =======検索窓用(ransack)記述========
  before_action :set_search

  private

  def set_search
    @q = Souvenir.ransack(params[:q])
    @souvenirs = @q.result
  end
  # ====================================

end
