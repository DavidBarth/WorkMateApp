require 'test_helper'

class VendingmachinesControllerTest < ActionController::TestCase
  
  
  def setup
    @vendingmachine = Vendingmachine.create(title: "a machine")
  end
  
  
  test "should get vendingmachines index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @vendingmachine.id})
    assert_response :success
  end
  
end