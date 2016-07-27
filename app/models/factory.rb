class Factory < ActiveRecord::Base
  has_many :vendingmachines
  has_many :stockchecksheets, through: :vendingmachines
end
