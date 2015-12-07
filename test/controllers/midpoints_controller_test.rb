require 'test_helper'

class MidpointsControllerTest < ActionController::TestCase
  setup do
    @midpoint = midpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midpoint" do
    assert_difference('Midpoint.count') do
      post :create, midpoint: {  }
    end

    assert_redirected_to midpoint_path(assigns(:midpoint))
  end

  test "should show midpoint" do
    get :show, id: @midpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midpoint
    assert_response :success
  end

  test "should update midpoint" do
    patch :update, id: @midpoint, midpoint: {  }
    assert_redirected_to midpoint_path(assigns(:midpoint))
  end

  test "should destroy midpoint" do
    assert_difference('Midpoint.count', -1) do
      delete :destroy, id: @midpoint
    end

    assert_redirected_to midpoints_path
  end
end
