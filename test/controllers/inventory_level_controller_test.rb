require "test_helper"

class InventoryLevelControllerTest < ActionDispatch::IntegrationTest
  test "should get count:integer" do
    get inventory_level_count:integer_url
    assert_response :success
  end

  test "should get references:warehouse" do
    get inventory_level_references:warehouse_url
    assert_response :success
  end
end
