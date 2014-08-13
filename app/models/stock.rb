class Stock < ActiveRecord::Base
  has_many :assets
  has_many :owners, :through => :assets, :source => :person
end
