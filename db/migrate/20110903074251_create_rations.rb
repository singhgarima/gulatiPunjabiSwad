class CreateRations < ActiveRecord::Migration
  def self.up
    create_table :rations do |t|
      t.string :name
      t.float :quantity
      t.string :units
      t.text :description
      t.datetime :last_finished_on
      t.datetime :last_purchased_on
      t.timestamps
    end
  end

  def self.down
    drop_table :rations
  end
end
