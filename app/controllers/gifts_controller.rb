class GiftsController < ApplicationController
  def index
    @gifts = Gift.all
  end

  def list
    @gifts = Gift.all
  end

  def create
    Gift.create!(gift_params)
    redirect_to '/list'
  end

  def select
  end

  private

  def gift_params
    params.require(:gift).permit(:name)
  end
end
