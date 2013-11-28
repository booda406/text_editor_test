require 'test_helper'

class CktestsControllerTest < ActionController::TestCase
  setup do
    @cktest = cktests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cktests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cktest" do
    assert_difference('Cktest.count') do
      post :create, cktest: { content: @cktest.content }
    end

    assert_redirected_to cktest_path(assigns(:cktest))
  end

  test "should show cktest" do
    get :show, id: @cktest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cktest
    assert_response :success
  end

  test "should update cktest" do
    patch :update, id: @cktest, cktest: { content: @cktest.content }
    assert_redirected_to cktest_path(assigns(:cktest))
  end

  test "should destroy cktest" do
    assert_difference('Cktest.count', -1) do
      delete :destroy, id: @cktest
    end

    assert_redirected_to cktests_path
  end
end
