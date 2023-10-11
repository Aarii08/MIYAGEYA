class Admin::WantsController < ApplicationController
  def index
    @want = Want.all
  end

  def destroy
    souvenir = Souvenir.find(params[:souvenir_id])
    want = Want.find_by(souvenir_id: souvenir.id)
    want.destroy
    redirect_to request.referer
  end
end
