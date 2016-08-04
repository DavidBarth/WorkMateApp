require 'test_helper'

class FaultsheetsControllerTest < ActionController::TestCase
  
  
  def setup
    @faultsheet = Faultsheet.create(fault: "The second drawer's lights not working...", vendingmachine_id: 1)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @faultsheet.id})
    assert_response :success
  end
  
end