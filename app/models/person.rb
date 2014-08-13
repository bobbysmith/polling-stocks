class Person < ActiveRecord::Base
  has_many :assets
  has_many :stocks, :through => :assets
end
