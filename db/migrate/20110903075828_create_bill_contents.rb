class CreateBillContents < ActiveRecord::Migration
  def self.up
    create_table :bill_contents do |t|
      t.integer :bill_id
      t.integer :menu_id
      t.integer :quantity
      t.timestamps
    end
  end

  def self.down
    drop_table :bill_contents
  end
end
