require 'test_helper'

class StockchecksheetTest < ActiveSupport::TestCase
 
  test "should save sheet as validations pass" do
    @stockchecksheet = Stockchecksheet.new 
    @stockchecksheet.item1 = "Drill1" 
    @stockchecksheet.item2 = "Drill2" 
    @stockchecksheet.item3 = "Drill3" 
    @stockchecksheet.item4 = "Drill4" 
    @stockchecksheet.item5 = "Drill5"
    @stockchecksheet.item11 = 1 
    @stockchecksheet.item12 = 2 
    @stockchecksheet.item21 = 2 
    @stockchecksheet.item22 = 3 
    @stockchecksheet.item31 = 1
    @stockchecksheet.item32 = 1 
    @stockchecksheet.item41 = 2
    @stockchecksheet.item42 = 3 
    @stockchecksheet.item51 = 3 
    @stockchecksheet.item52 = 3
    @stockchecksheet.vendingmachine_id = 1
    
    
    #assertion to see whether the database was hit with the new data
    #the message should be displayed if not.
    assert @stockchecksheet.save, "should save"
  end
end