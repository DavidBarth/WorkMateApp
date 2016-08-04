class Vendingmachine < ActiveRecord::Base
  
  belongs_to :factory
  has_many :stockchecksheets
  has_many :faultsheets
  
end
