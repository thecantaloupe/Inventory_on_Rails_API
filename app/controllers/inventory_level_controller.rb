class InventoryLevelController < ApplicationController
  before_action :set_inventory_level, only: [:show, :update, :destroy]

  # GET /inventory_level
  def index
    @inventory_levels = IventoryLevel.all

    render json: @inventory_level
  end

  # GET /inventory_levels/1
  def show
    render json: @inventory_level
  end

  # POST /inventory_levels
  def create
    @inventory_level = InventoryLevel.new(inventory_level_params)

    if @inventory_level.save
      render json: @inventory_level, status: :created, location: @winventory_level
    else
      render json: @inventory_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventory_levels/1
  def update
    if @inventory_level.update(inventory_level_params)
      render json: @inventory_level
    else
      render json: @inventory_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventory_levels/1
  def destroy
    @inventory_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_level
      @inventory_level= InventoryLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_level_params
      params.require(:inventory_level).permit(:count, :warehouse_id, :inventory_item_id)
    end
end
