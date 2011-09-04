class Menu < ActiveRecord::Base
  attr_accessible :name, :price, :category

  has_many :bill_contents
end
