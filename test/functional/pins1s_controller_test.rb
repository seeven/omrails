require 'test_helper'

class Pins1sControllerTest < ActionController::TestCase
  setup do
    @pins1 = pins1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pins1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pins1" do
    assert_difference('Pins1.count') do
      post :create, pins1: {  }
    end

    assert_redirected_to pins1_path(assigns(:pins1))
  end

  test "should show pins1" do
    get :show, id: @pins1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pins1
    assert_response :success
  end

  test "should update pins1" do
    put :update, id: @pins1, pins1: {  }
    assert_redirected_to pins1_path(assigns(:pins1))
  end

  test "should destroy pins1" do
    assert_difference('Pins1.count', -1) do
      delete :destroy, id: @pins1
    end

    assert_redirected_to pins1s_path
  end
end
