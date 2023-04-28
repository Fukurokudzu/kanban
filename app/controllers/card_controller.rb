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
    @cards = Card.all
  end

  def card_params
    params.permit(:id, :title, :description)
  end
end
