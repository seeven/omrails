require 'test_helper'

class Pin2sControllerTest < ActionController::TestCase
  setup do
    @pin2 = pin2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pin2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pin2" do
    assert_difference('Pin2.count') do
      post :create, pin2: { description: @pin2.description, string: @pin2.string }
    end

    assert_redirected_to pin2_path(assigns(:pin2))
  end

  test "should show pin2" do
    get :show, id: @pin2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pin2
    assert_response :success
  end

  test "should update pin2" do
    put :update, id: @pin2, pin2: { description: @pin2.description, string: @pin2.string }
    assert_redirected_to pin2_path(assigns(:pin2))
  end

  test "should destroy pin2" do
    assert_difference('Pin2.count', -1) do
      delete :destroy, id: @pin2
    end

    assert_redirected_to pin2s_path
  end
end
