require 'test_helper'

class FaultsheetTest < ActiveSupport:: TestCase

  test "should save sheet as validations pass" do 
    
    @faultsheet = Faultsheet.new
    @faultsheet.fault = "The second drawer's lights not working, 2nd drawer not closing properly"
    @faultsheet.vendingmachine_id = 1
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @faultsheet.save, "should save"
  end 
end