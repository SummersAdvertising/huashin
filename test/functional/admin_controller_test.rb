require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get log_in" do
    get :log_in
    assert_response :success
  end

  test "should get log_out" do
    get :log_out
    assert_response :success
  end

end
