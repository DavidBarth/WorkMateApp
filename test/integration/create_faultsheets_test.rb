require 'test_helper'

class CreateFaultsheetsTest < ActionDispatch::IntegrationTest
  
  # test message
  test " get new sheet form and create new sheet" do
    # gets new sheet path -> emulating user behaviour were user selet the option to create a new record
    get new_faultsheet_path
    
    # assert whether we have the new path reached for the template
    assert_template 'faultsheets/new'
    
    # assert wether we have created a new sheet
    # by checking the difference in count
    assert_difference 'Faultsheet.count', 1 do
      
      # submission of a new form handled by the create action which is a
      # HTTP POST request to create a new sheet with the below attirbutes
      post_via_redirect faultsheets_path, faultsheet: {fault: "this is a fault", vendingmachine_id:1}
    end
    
    # asserting the the show view whether it contains
    # one of the strings passed in at creation ->
    # "phy" should be visible in the reponse body
    assert_template 'faultsheets/show'
    assert_match "Fault:", response.body
  end
end