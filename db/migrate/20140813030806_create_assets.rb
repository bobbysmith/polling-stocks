class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :person
      t.references :stock

      t.timestamps
    end
  end
end
