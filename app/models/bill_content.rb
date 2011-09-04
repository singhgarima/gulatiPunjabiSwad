class BillContent < ActiveRecord::Base
  attr_accessible :menu_id, :quantity

  belongs_to :bill
  belongs_to :menu

end
