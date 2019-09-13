# Simcards controller
class SimCardsController < ApplicationController
  def create
    @sim_card = SimCard.new(sim_card_params)
    if @sim_card.save
      render json: SimCardSerializer.new(@sim_card).to_json, status: 201
    else
      render json: { errors: sim_card.errors.full_messages }, status: 422
    end
  end

  private

  def sim_card_params
    params.require(:sim_card).permit(:number)
  end
end
