require 'test_helper'

class OrderproductsControllerTest < ActionController::TestCase
  setup do
    @orderproduct = orderproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderproduct" do
    assert_difference('Orderproduct.count') do
      post :create, orderproduct: { descript: @orderproduct.descript, name: @orderproduct.name, price: @orderproduct.price }
    end

    assert_redirected_to orderproduct_path(assigns(:orderproduct))
  end

  test "should show orderproduct" do
    get :show, id: @orderproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orderproduct
    assert_response :success
  end

  test "should update orderproduct" do
    put :update, id: @orderproduct, orderproduct: { descript: @orderproduct.descript, name: @orderproduct.name, price: @orderproduct.price }
    assert_redirected_to orderproduct_path(assigns(:orderproduct))
  end

  test "should destroy orderproduct" do
    assert_difference('Orderproduct.count', -1) do
      delete :destroy, id: @orderproduct
    end

    assert_redirected_to orderproducts_path
  end
end
