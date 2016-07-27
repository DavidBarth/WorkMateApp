require 'test_helper'

class StockchecksheetsControllerTest < ActionController::TestCase
  
  
  def setup
    @stockchecksheet = Stockchecksheet.create(item1: "drill1",item2: "drill2",item3: "drill3",
                                                      item4: "drill4",item5: "drill5", vendingmachine_id:1)
  end
  
  
  test "should get stockchecksheet index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @stockchecksheet.id})
    assert_response :success
  end
  
end