require 'test_helper'

class VendingmachineTest < ActiveSupport::TestCase
  # Test 1 - Fixture 1 should pass validation as the supplied values
  # are on the positive end of the boundary
  test "should save sheet as validations pass" do
    @machine = Vendingmachine.new # creates new variable of the type
    @machine.title = "This is a factory" 
    @machine.configuration = "This is the factory address" 
    @machine.factory_id = 1
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @machine.save, "should save"
  end
  
end