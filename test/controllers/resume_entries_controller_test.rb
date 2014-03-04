require 'test_helper'

class ResumeEntriesControllerTest < ActionController::TestCase
  setup do
    @resume_entry = resume_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resume_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume_entry" do
    assert_difference('ResumeEntry.count') do
      post :create, resume_entry: { body: @resume_entry.body, title: @resume_entry.title }
    end

    assert_redirected_to resume_entry_path(assigns(:resume_entry))
  end

  test "should show resume_entry" do
    get :show, id: @resume_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume_entry
    assert_response :success
  end

  test "should update resume_entry" do
    patch :update, id: @resume_entry, resume_entry: { body: @resume_entry.body, title: @resume_entry.title }
    assert_redirected_to resume_entry_path(assigns(:resume_entry))
  end

  test "should destroy resume_entry" do
    assert_difference('ResumeEntry.count', -1) do
      delete :destroy, id: @resume_entry
    end

    assert_redirected_to resume_entries_path
  end
end
