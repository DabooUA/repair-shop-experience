require "test_helper"

class RepairshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repairshop = repairshops(:one)
  end

  test "should get index" do
    get repairshops_url, as: :json
    assert_response :success
  end

  test "should create repairshop" do
    assert_difference('Repairshop.count') do
      post repairshops_url, params: { repairshop: { city: @repairshop.city, state: @repairshop.state, street_address: @repairshop.street_address, zip_code: @repairshop.zip_code } }, as: :json
    end

    assert_response 201
  end

  test "should show repairshop" do
    get repairshop_url(@repairshop), as: :json
    assert_response :success
  end

  test "should update repairshop" do
    patch repairshop_url(@repairshop), params: { repairshop: { city: @repairshop.city, state: @repairshop.state, street_address: @repairshop.street_address, zip_code: @repairshop.zip_code } }, as: :json
    assert_response 200
  end

  test "should destroy repairshop" do
    assert_difference('Repairshop.count', -1) do
      delete repairshop_url(@repairshop), as: :json
    end

    assert_response 204
  end
end
