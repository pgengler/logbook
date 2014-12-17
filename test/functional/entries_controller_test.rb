require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: @entry.attributes
    end
  end

  test "redirects back to index after creating a new entry" do
    post :create, entry: @entry.attributes
    assert_redirected_to entries_url
  end

  test "sets a flash message after creating a new entry" do
    post :create, entry: @entry.attributes
    assert_equal "Entry was successfully created.", flash[:notice]
  end


  test "should get edit" do
    get :edit, id: @entry.to_param
    assert_response :success
  end

  test "should update entry" do
    @entry.takeoffs = 2
    put :update, id: @entry.to_param, entry: @entry.attributes
    assert_equal 2, Entry.find(@entry.id).takeoffs
  end

  test "redirects back to index after updating an entry" do
    put :update, id: @entry, entry: @entry.attributes
    assert_redirected_to entries_url
  end

  test "sets a flash message when updating an entry" do
    put :update, id: @entry, entry: @entry.attributes
    assert_equal "Entry was successfully updated.", flash[:notice]
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry.to_param
    end
  end

  test "redirects back to index after deleting an entry" do
    delete :destroy, id: @entry
    assert_redirected_to entries_url
  end

  test "sets a flash message when deleting an entry" do
    delete :destroy, id: @entry
    assert_equal "Entry was deleted.", flash[:notice]
  end
end
