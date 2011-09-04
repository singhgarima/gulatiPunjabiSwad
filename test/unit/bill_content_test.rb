require 'test_helper'

class BillContentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BillContent.new.valid?
  end
end
