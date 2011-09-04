require 'test_helper'

class BillContentsControllerTest < ActionController::TestCase
  def test_edit
    get :edit, :id => BillContent.first
    assert_template 'edit'
  end

  def test_destroy
    bill_content = BillContent.first
    delete :destroy, :id => bill_content
    assert_redirected_to root_url
    assert !BillContent.exists?(bill_content.id)
  end
end
