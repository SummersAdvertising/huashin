require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get askboard" do
    get :askboard
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

end
