require 'test_helper'

class CreateFactoriesTest < ActionDispatch::IntegrationTest
  
  # test message
  test " get new sheet form and create new sheet" do
    # gets new sheet path -> emulating user behaviour were user selet the option to create a new record
    get new_vendingmachine_path
    
    # assert whether we have the new path reached for the template
    assert_template 'vendingmachines/new'
    
    # assert wether we have created a new sheet
    # by checking the difference in count
    assert_difference 'Vendingmachine.count', 1 do
      
      # submission of a new form handled by the create action which is a
      # HTTP POST request to create a new sheet with the below attirbutes
      post_via_redirect vendingmachines_path, vendingmachine: {title: "a machine", 
      configuration: "a configuration", factory_id: 1}
    end
    
    # asserting the the show view whether it contains
    # one of the strings passed in at creation ->
    # "aName" should be visible in the reponse body
    assert_template 'vendingmachines/show'
    assert_match "a machine", response.body
  end
end