require 'test_helper'

class OccupantsHasBedroomsControllerTest < ActionController::TestCase
  setup do
    @occupants_has_bedroom = occupants_has_bedrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occupants_has_bedrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occupants_has_bedroom" do
    assert_difference('OccupantsHasBedroom.count') do
      post :create, occupants_has_bedroom: { bedrooms_floors_houses_id: @occupants_has_bedroom.bedrooms_floors_houses_id, bedrooms_floors_id: @occupants_has_bedroom.bedrooms_floors_id, bedrooms_id: @occupants_has_bedroom.bedrooms_id, occupants_id: @occupants_has_bedroom.occupants_id }
    end

    assert_redirected_to occupants_has_bedroom_path(assigns(:occupants_has_bedroom))
  end

  test "should show occupants_has_bedroom" do
    get :show, id: @occupants_has_bedroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occupants_has_bedroom
    assert_response :success
  end

  test "should update occupants_has_bedroom" do
    patch :update, id: @occupants_has_bedroom, occupants_has_bedroom: { bedrooms_floors_houses_id: @occupants_has_bedroom.bedrooms_floors_houses_id, bedrooms_floors_id: @occupants_has_bedroom.bedrooms_floors_id, bedrooms_id: @occupants_has_bedroom.bedrooms_id, occupants_id: @occupants_has_bedroom.occupants_id }
    assert_redirected_to occupants_has_bedroom_path(assigns(:occupants_has_bedroom))
  end

  test "should destroy occupants_has_bedroom" do
    assert_difference('OccupantsHasBedroom.count', -1) do
      delete :destroy, id: @occupants_has_bedroom
    end

    assert_redirected_to occupants_has_bedrooms_path
  end
end
