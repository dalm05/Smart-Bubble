require 'test_helper'

class DepartmentHomesControllerTest < ActionController::TestCase
  setup do
    @department_home = department_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:department_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create department_home" do
    assert_difference('DepartmentHome.count') do
      post :create, department_home: {  }
    end

    assert_redirected_to department_home_path(assigns(:department_home))
  end

  test "should show department_home" do
    get :show, id: @department_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @department_home
    assert_response :success
  end

  test "should update department_home" do
    put :update, id: @department_home, department_home: {  }
    assert_redirected_to department_home_path(assigns(:department_home))
  end

  test "should destroy department_home" do
    assert_difference('DepartmentHome.count', -1) do
      delete :destroy, id: @department_home
    end

    assert_redirected_to department_homes_path
  end
end
