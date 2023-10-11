class Public::WantsController < ApplicationController

  def create
    souvenir = Souvenir.find(params[:souvenir_id])
    want = current_user.wants.new(souvenir_id: souvenir.id)
    want.save
    redirect_to souvenir_path(souvenir)
  end

  def destroy
    souvenir = Souvenir.find(params[:souvenir_id])
    want = current_user.wants.find_by(souvenir_id: souvenir.id)
    want.destroy
    redirect_to souvenir_path(souvenir)
  end

end
