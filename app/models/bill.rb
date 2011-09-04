class Bill < ActiveRecord::Base
  attr_accessible :name, :total, :menu_ids

  has_many :bill_contents
  has_many :menus, :through => :bill_contents

  validates_presence_of :name, :total
end
