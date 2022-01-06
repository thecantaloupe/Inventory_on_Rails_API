require "test_helper"

class WarehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse = warehouses(:one)
  end

  test "should get index" do
    get warehouses_url, as: :json
    assert_response :success
  end

  test "should create warehouse" do
    assert_difference('Warehouse.count') do
      post warehouses_url, params: { warehouse: { active: @warehouse.active, address1: @warehouse.address1, city: @warehouse.city, description: @warehouse.description, lat: @warehouse.lat, lng: @warehouse.lng, state: @warehouse.state, warehouse_manager: @warehouse.warehouse_manager } }, as: :json
    end

    assert_response 201
  end

  test "should show warehouse" do
    get warehouse_url(@warehouse), as: :json
    assert_response :success
  end

  test "should update warehouse" do
    patch warehouse_url(@warehouse), params: { warehouse: { active: @warehouse.active, address1: @warehouse.address1, city: @warehouse.city, description: @warehouse.description, lat: @warehouse.lat, lng: @warehouse.lng, state: @warehouse.state, warehouse_manager: @warehouse.warehouse_manager } }, as: :json
    assert_response 200
  end

  test "should destroy warehouse" do
    assert_difference('Warehouse.count', -1) do
      delete warehouse_url(@warehouse), as: :json
    end

    assert_response 204
  end
end
