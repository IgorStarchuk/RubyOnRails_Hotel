require 'test_helper'

class BedromsControllerTest < ActionController::TestCase
  setup do
    @bedrom = bedroms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bedroms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedrom" do
    assert_difference('Bedrom.count') do
      post :create, bedrom: { Name: @bedrom.Name, floors_houses_id: @bedrom.floors_houses_id, floors_id: @bedrom.floors_id }
    end

    assert_redirected_to bedrom_path(assigns(:bedrom))
  end

  test "should show bedrom" do
    get :show, id: @bedrom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bedrom
    assert_response :success
  end

  test "should update bedrom" do
    patch :update, id: @bedrom, bedrom: { Name: @bedrom.Name, floors_houses_id: @bedrom.floors_houses_id, floors_id: @bedrom.floors_id }
    assert_redirected_to bedrom_path(assigns(:bedrom))
  end

  test "should destroy bedrom" do
    assert_difference('Bedrom.count', -1) do
      delete :destroy, id: @bedrom
    end

    assert_redirected_to bedroms_path
  end
end
