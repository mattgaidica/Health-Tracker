require 'test_helper'

class CaffeinesControllerTest < ActionController::TestCase
  setup do
    @caffeine = caffeines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caffeines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caffeine" do
    assert_difference('Caffeine.count') do
      post :create, caffeine: @caffeine.attributes
    end

    assert_redirected_to caffeine_path(assigns(:caffeine))
  end

  test "should show caffeine" do
    get :show, id: @caffeine.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caffeine.to_param
    assert_response :success
  end

  test "should update caffeine" do
    put :update, id: @caffeine.to_param, caffeine: @caffeine.attributes
    assert_redirected_to caffeine_path(assigns(:caffeine))
  end

  test "should destroy caffeine" do
    assert_difference('Caffeine.count', -1) do
      delete :destroy, id: @caffeine.to_param
    end

    assert_redirected_to caffeines_path
  end
end
