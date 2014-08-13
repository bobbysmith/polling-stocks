class AddPersonIdToStocks < ActiveRecord::Migration
  def change
    add_reference :stocks, :person, :index => true
  end
end
