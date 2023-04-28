class ListController < ApplicationController
  before_action :lists_collection, only: %i[index show edit update destroy]

  def index
    render json: @lists
  end

  def show
    @list = List.find(list_params[:id])
    render json: @list
  end

  private

  def lists_collection
    @lists = List.all
  end

  def list_params
    params.permit(:id, :title)
  end
end
