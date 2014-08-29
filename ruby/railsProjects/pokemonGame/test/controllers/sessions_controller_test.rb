require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def setup
    @params = {username: 'oneuser', password: 'password'}
    User.new(@params)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    post :create, params: @params
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
