require 'test_helper'

class Sys::Function::LockControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
