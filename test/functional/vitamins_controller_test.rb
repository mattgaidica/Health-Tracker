require 'test_helper'

class VitaminsControllerTest < ActionController::TestCase
  setup do
    @vitamin = vitamins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vitamins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vitamin" do
    assert_difference('Vitamin.count') do
      post :create, vitamin: @vitamin.attributes
    end

    assert_redirected_to vitamin_path(assigns(:vitamin))
  end

  test "should show vitamin" do
    get :show, id: @vitamin.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vitamin.to_param
    assert_response :success
  end

  test "should update vitamin" do
    put :update, id: @vitamin.to_param, vitamin: @vitamin.attributes
    assert_redirected_to vitamin_path(assigns(:vitamin))
  end

  test "should destroy vitamin" do
    assert_difference('Vitamin.count', -1) do
      delete :destroy, id: @vitamin.to_param
    end

    assert_redirected_to vitamins_path
  end
end
