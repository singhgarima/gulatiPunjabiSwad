class CreateVats < ActiveRecord::Migration
  def self.up
    create_table :vats do |t|
      t.float :tax
      t.timestamps
    end
  end

  def self.down
    drop_table :vats
  end
end
