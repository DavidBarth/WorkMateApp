require 'test_helper'

class BrokentoolreportsheetTest < ActiveSupport::TestCase
  
  # Test 1 - Fixture 1 should pass validation as the supplied values
  # are on the positive end of the boundary
  test "should save sheet as validations pass" do
    @sheet = Brokentoolreportsheet.new # creates new variable of the type
    @sheet.toolname = "a" * 5 # assigns a 5 char long string to toolname attribute
    @sheet.toolfault = "a" * 20 # assigns a 20 char long string to toolfault attribute
    @sheet.toollocation = "a" * 3 # assigns a 3 char long string to toollocation attribute
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @sheet.save, "should save as validations are true"
  end
  
  
  # Test 2 - Fixture 2 should not pass as the supplied values are on the negative
  # end of the boundary
  test "should not save sheet as validations are false" do
    @sheet = Brokentoolreportsheet.new # creates new variable of the type
    @sheet.toolname = "a" * 4 # assigns a 4 char long string to toolname attribute
    @sheet.toolfault = "a" * 19 # assigns a 19 char long string to toolfault attribute
    @sheet.toollocation = "a" * 2 # assigns a 2 char long string to toollocation attribute
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @sheet.save, "should not save as validations are false"
  end
end