class CardController < ApplicationController
  before_action :cards_collection, only: %i[index show edit update destroy]

  def index
    render json: @cards
  end

  def show
    @card = Card.find(card_params[:id])
    render json: @card
  end

  private

  def cards_collection
    @cards = Card.where(list_id: card_params[:list_id])
  end

  def card_params
    params.permit(:id, :title, :description, :list_id)
  end
end
