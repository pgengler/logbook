require 'test_helper'

class PlanesControllerTest < ActionController::TestCase
  setup do
    @plane = planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plane" do
    assert_difference('Plane.count') do
      post :create, plane: @plane.attributes
    end

    assert_redirected_to plane_path(assigns(:plane))
  end

  test "should show plane" do
    get :show, id: @plane.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plane.to_param
    assert_response :success
  end

  test "should update plane" do
    put :update, id: @plane.to_param, plane: @plane.attributes
    assert_redirected_to plane_path(assigns(:plane))
  end

  test "should destroy plane" do
    assert_difference('Plane.count', -1) do
      delete :destroy, id: @plane.to_param
    end

    assert_redirected_to planes_path
  end
end
