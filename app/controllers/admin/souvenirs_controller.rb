class Admin::SouvenirsController < ApplicationController

  def index
    @souvenirs = Souvenir.all
  end

  def new
  end

  def create
  end

  def show
    @souvenir = Souvenir.find(params[:id])
  end

  def edit
    @souvenir = Souvenir.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
