class InventoryItemsController < ApplicationController
  before_action :set_inventory_item, only: [:show, :update, :destroy]

  # GET /inventory_items
  def index
    @inventory_items = InventoryItem.all

    render json: @inventory_items
  end

  # GET /inventory_items/1
  def show
    render json: @inventory_item
  end

  # POST /inventory_items
  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    if @inventory_item.save
      render json: @inventory_item, status: :created, location: @inventory_item
    else
      render json: @inventory_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventory_items/1
  def update
    if @inventory_item.update(inventory_item_params)
      render json: @inventory_item
    else
      render json: @inventory_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventory_items/1
  def destroy
    @inventory_item.destroy
  end

  private
    #Dont want to send back just one, want to send back updated array 
    def get_inventory_items
      InventoryItem.order('created_at DESC')
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_item
      @inventory_item = InventoryItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_item_params
      params.require(:inventory_item).permit(:name, :sku, :description, :inventory_level)
    end
end
