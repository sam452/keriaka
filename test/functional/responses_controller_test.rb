require 'test_helper'

class ResponsesControllerTest < ActionController::TestCase

  test "#new" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "#create succeeds" do
    assert_difference 'User.count' do
      post :create, user: {name: 'John Doe', email: 'john@doe.com', phone: '555-444-3434'}
      assert_response :ok
    end
  end

  test "#create fails on validation" do
    assert_no_difference 'User.count' do
      post :create, user: {name: 'Joe'}
      assert_response :ok
      assert_template :new
      assert !assigns(:user).valid?
    end
  end

end