class Asset < ActiveRecord::Base
  belongs_to :person
  belongs_to :stock
end
