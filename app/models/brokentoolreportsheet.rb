class Brokentoolreportsheet < ActiveRecord:: Base
  validates :toolname,  length: {minimum: 5}
  validates :toolfault,  length: {minimum: 20}
  validates :toollocation,  length: {minimum: 3}
end