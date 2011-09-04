require 'test_helper'

class RationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ration.new.valid?
  end
end
