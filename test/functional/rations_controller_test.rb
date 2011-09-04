require 'test_helper'

class RationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Ration.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Ration.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ration.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ration_url(assigns(:ration))
  end

  def test_edit
    get :edit, :id => Ration.first
    assert_template 'edit'
  end

  def test_update_invalid
    Ration.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ration.first
    assert_template 'edit'
  end

  def test_update_valid
    Ration.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ration.first
    assert_redirected_to ration_url(assigns(:ration))
  end

  def test_destroy
    ration = Ration.first
    delete :destroy, :id => ration
    assert_redirected_to rations_url
    assert !Ration.exists?(ration.id)
  end
end
