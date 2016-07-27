require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  
  # test message
  test " get new sheet form and create new sheet" do
    # gets new sheet path -> emulating user behaviour were user selet the option to create a new record
    get new_brokentoolreportsheet_path
    
    # assert whether we have the new path reached for the template
    assert_template 'brokentoolreportsheets/new'
    
    # assert wether we have created a new sheet
    # by checking the difference in count
    assert_difference 'Brokentoolreportsheet.count', 1 do
      
      # submission of a new form handled by the create action which is a
      # HTTP POST request to create a new sheet with the below attirbutes
      post_via_redirect brokentoolreportsheets_path, brokentoolreportsheet: {toolname: "aName", 
      toolfault: "a fault that is more than 20 characters long", toollocation: "more than 5 chars"}
    end
    
    # asserting the the show view whether it contains
    # one of the strings passed in at creation ->
    # "aName" should be visible in the reponse body
    assert_template 'brokentoolreportsheets/show'
    assert_match "aName", response.body
  end
end