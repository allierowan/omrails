require 'test_helper'

class GupbosControllerTest < ActionController::TestCase
  setup do
    @gupbo = gupbos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gupbos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gupbo" do
    assert_difference('Gupbo.count') do
      post :create, gupbo: { comment: @gupbo.comment, rating: @gupbo.rating, user_id: @gupbo.user_id }
    end

    assert_redirected_to gupbo_path(assigns(:gupbo))
  end

  test "should show gupbo" do
    get :show, id: @gupbo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gupbo
    assert_response :success
  end

  test "should update gupbo" do
    put :update, id: @gupbo, gupbo: { comment: @gupbo.comment, rating: @gupbo.rating, user_id: @gupbo.user_id }
    assert_redirected_to gupbo_path(assigns(:gupbo))
  end

  test "should destroy gupbo" do
    assert_difference('Gupbo.count', -1) do
      delete :destroy, id: @gupbo
    end

    assert_redirected_to gupbos_path
  end
end
