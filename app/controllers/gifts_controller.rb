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
    gift.update(selected: !gift.selected)

    if gift.selected
      render json: { message: 'Presente confirmado', confirmed: true }, status: :ok
    else
      render json: { confirmed: false }, status: :ok
    end
  end

  private

  def gift_params
    params.require(:gift).permit(:name)
  end
end
