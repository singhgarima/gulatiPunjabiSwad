class ChangeColumnLastPurchasedAndLastConsumedToDateInRation < ActiveRecord::Migration
  def self.up
    change_table :rations do |t|
      t.change :last_finished_on, :date
      t.change :last_purchased_on, :date
    end
  end

  def self.down
    change_table :rations do |t|
      t.change :last_finished_on, :datetime
      t.change :last_purchased_on, :datetime
    end
  end
end
