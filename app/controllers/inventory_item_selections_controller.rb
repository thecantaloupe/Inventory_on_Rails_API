class InventoryItemSelectionsController < ApplicationController
  before_action :set_inventory_item_selection, only: [:show, :update, :destroy]

  # GET /inventory_item_selections
  def index
    @inventory_item_selections = InventoryItemSelection.all

    render json: @inventory_item_selections
  end

  # GET /inventory_item_selections/1
  def show
    render json: @inventory_item_selection
  end

  # POST /inventory_item_selections
  def create
    @inventory_item_selection = InventoryItemSelection.new(inventory_item_selection_params)

    if @inventory_item_selection.save
      render json: @inventory_item_selection, status: :created, location: @inventory_item_selection
    else
      render json: @inventory_item_selection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventory_item_selections/1
  def update
    if @inventory_item_selection.update(inventory_item_selection_params)
      render json: @inventory_item_selection
    else
      render json: @inventory_item_selection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventory_item_selections/1
  def destroy
    @inventory_item_selection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_item_selection
      @inventory_item_selection = InventoryItemSelection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_item_selection_params
      params.require(:inventory_item_selection).permit(:option, :pf_id, :inventory_item_id)
    end
end
