require "test_helper"

class InventoryItemSelectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_item_selection = inventory_item_selections(:one)
  end

  test "should get index" do
    get inventory_item_selections_url, as: :json
    assert_response :success
  end

  test "should create inventory_item_selection" do
    assert_difference('InventoryItemSelection.count') do
      post inventory_item_selections_url, params: { inventory_item_selection: { inventory_item_id: @inventory_item_selection.inventory_item_id, option: @inventory_item_selection.option, pf_id: @inventory_item_selection.pf_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inventory_item_selection" do
    get inventory_item_selection_url(@inventory_item_selection), as: :json
    assert_response :success
  end

  test "should update inventory_item_selection" do
    patch inventory_item_selection_url(@inventory_item_selection), params: { inventory_item_selection: { inventory_item_id: @inventory_item_selection.inventory_item_id, option: @inventory_item_selection.option, pf_id: @inventory_item_selection.pf_id } }, as: :json
    assert_response 200
  end

  test "should destroy inventory_item_selection" do
    assert_difference('InventoryItemSelection.count', -1) do
      delete inventory_item_selection_url(@inventory_item_selection), as: :json
    end

    assert_response 204
  end
end
