class Bill < ActiveRecord::Base
  attr_accessible :name, :total, :menu_ids

  has_many :bill_contents
  has_many :menus, :through => :bill_contents

  before_save :calculate_total

  def calculate_total
    return if bill_contents.blank?
    self.total = 0
    bill_contents.each{|bill_content| self.total += (bill_content.menu.price.to_f * bill_content.quantity.to_f); }
    self.total = self.total + (self.total * Vat.lastest_tax_rate).ceil
  end

  def vat_value
    self.total - (self.total/(1 + Vat.lastest_tax_rate)).ceil
  end
end
