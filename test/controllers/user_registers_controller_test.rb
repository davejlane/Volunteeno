require "test_helper"

class UserRegistersControllerTest < ActionController::TestCase

  before do
    @user_register = user_registers(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:user_registers)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('UserRegister.count') do
      post :create, user_register: {  }
    end

    assert_redirected_to user_register_path(assigns(:user_register))
  end

  def test_show
    get :show, id: @user_register
    assert_response :success
  end

  def test_edit
    get :edit, id: @user_register
    assert_response :success
  end

  def test_update
    put :update, id: @user_register, user_register: {  }
    assert_redirected_to user_register_path(assigns(:user_register))
  end

  def test_destroy
    assert_difference('UserRegister.count', -1) do
      delete :destroy, id: @user_register
    end

    assert_redirected_to user_registers_path
  end
end
