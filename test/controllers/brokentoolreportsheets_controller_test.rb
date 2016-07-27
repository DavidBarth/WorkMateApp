require 'test_helper'

class BrokentoolreportsheetsControllerTest < ActionController::TestCase
  
  
  def setup
    @sheet = Brokentoolreportsheet.create(toolname: "aName", toolfault: "a fault that is more than 20 characters long", toollocation: "more than 5 chars")
  end
  
  
  test "should get brokentoolreportsheets index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @sheet.id})
    assert_response :success
  end
  
end