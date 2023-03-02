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

  def confirm
    gift = Gift.find(params[:id])

    if gift.selected
      render json: { message: 'Esse presente já foi confirmado' }, status: :unprocessable_entity
    else
      gift.update(selected: true)

      render json: { message: 'Presente confirmado' }, status: :ok
    end
  end

  private

  def gift_params
    params.require(:gift).permit(:name)
  end
end
