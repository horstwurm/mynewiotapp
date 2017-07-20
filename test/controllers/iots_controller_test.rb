require 'test_helper'

class IotsControllerTest < ActionController::TestCase
  setup do
    @iot = iots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iot" do
    assert_difference('Iot.count') do
      post :create, iot: { sensor: @iot.sensor, value: @iot.value }
    end

    assert_redirected_to iot_path(assigns(:iot))
  end

  test "should show iot" do
    get :show, id: @iot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iot
    assert_response :success
  end

  test "should update iot" do
    patch :update, id: @iot, iot: { sensor: @iot.sensor, value: @iot.value }
    assert_redirected_to iot_path(assigns(:iot))
  end

  test "should destroy iot" do
    assert_difference('Iot.count', -1) do
      delete :destroy, id: @iot
    end

    assert_redirected_to iots_path
  end
end
