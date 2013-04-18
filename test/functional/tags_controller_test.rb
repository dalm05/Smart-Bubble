require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { label_1: @tag.label_1, label_2: @tag.label_2, label_3: @tag.label_3, label_4: @tag.label_4, label_5: @tag.label_5 }
    end

    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag
    assert_response :success
  end

  test "should update tag" do
    put :update, id: @tag, tag: { label_1: @tag.label_1, label_2: @tag.label_2, label_3: @tag.label_3, label_4: @tag.label_4, label_5: @tag.label_5 }
    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @tag
    end

    assert_redirected_to tags_path
  end
end
