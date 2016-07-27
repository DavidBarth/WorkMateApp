require 'test_helper'

class CreateStockchecksheetsTest < ActionDispatch::IntegrationTest
  
  # test message
  test " get new sheet form and create new sheet" do
    # gets new sheet path -> emulating user behaviour were user selet the option to create a new record
    get new_stockchecksheet_path
    
    # assert whether we have the new path reached for the template
    assert_template 'stockchecksheets/new'
    
    # assert wether we have created a new sheet
    # by checking the difference in count
    assert_difference 'Stockchecksheet.count', 1 do
      
      # submission of a new form handled by the create action which is a
      # HTTP POST request to create a new sheet with the below attirbutes
      post_via_redirect stockchecksheets_path, stockchecksheet: {item1: "drill1", 
      item2: "drill2",item3: "drill3",item4: "drill4",item5: "drill5",
      item11: "1", 
      item12: "1",item21: "5",item22: "5",item31: "18",item32: "18", 
      item41: "25",item42: "25",item51: "30",item52: "29"}
    end
    
    # asserting the the show view whether it contains
    # one of the strings passed in at creation ->
    # "phy" should be visible in the reponse body
    assert_template 'stockchecksheets/show'
    assert_match "Physical", response.body
  end
end