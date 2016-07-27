require 'test_helper'

class FactoryTest < ActiveSupport::TestCase
  # Test 1 - Fixture 1 should pass validation as the supplied values
  # are on the positive end of the boundary
  test "should save sheet as validations pass" do
    @factory = Factory.new # creates new variable of the type
    @factory.name = "This is a factory" 
    @factory.address = "This is the factory address" 
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @factory.save, "should save"
  end
  
end
