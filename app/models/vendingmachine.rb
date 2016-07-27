class Vendingmachine < ActiveRecord::Base
  
  belongs_to :factory
  has_many :stockchecksheets
  
end
