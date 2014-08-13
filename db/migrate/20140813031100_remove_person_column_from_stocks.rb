class RemovePersonColumnFromStocks < ActiveRecord::Migration
  def up
    remove_column :stocks, :person_id
  end

  def down
    add_column :stocks, :person_id, :integer, :index => true
  end
end
