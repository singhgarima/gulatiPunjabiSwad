class Ration < ActiveRecord::Base
  attr_accessible :name, :quantity, :units, :description, :last_finished_on, :last_purchased_on
end
