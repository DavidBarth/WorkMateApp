require 'test_helper'

class FactoriesControllerTest < ActionController::TestCase
  
  
  def setup
    @factory = Factory.create(name: "Factory Name", address: "This is an address")
  end
  
  
  test "should get factories index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @factory.id})
    assert_response :success
  end
  
end