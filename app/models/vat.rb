class Vat < ActiveRecord::Base
  attr_accessible :tax

  def self.lastest_tax_rate
    last.tax/100
  end
end
