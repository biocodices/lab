require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  setup do
    @library = libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library" do
    assert_difference('Library.count') do
      post :create, library: { clp: @library.clp, fpu: @library.fpu, hyp: @library.hyp, iap: @library.iap, laboratory: @library.laboratory, lnp: @library.lnp, notes: @library.notes, old_id: @library.old_id, pcr_date: @library.pcr_date, post_pcr_date: @library.post_pcr_date, pre_pcr_date: @library.pre_pcr_date, sgp: @library.sgp }
    end

    assert_redirected_to library_path(assigns(:library))
  end

  test "should show library" do
    get :show, id: @library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library
    assert_response :success
  end

  test "should update library" do
    patch :update, id: @library, library: { clp: @library.clp, fpu: @library.fpu, hyp: @library.hyp, iap: @library.iap, laboratory: @library.laboratory, lnp: @library.lnp, notes: @library.notes, old_id: @library.old_id, pcr_date: @library.pcr_date, post_pcr_date: @library.post_pcr_date, pre_pcr_date: @library.pre_pcr_date, sgp: @library.sgp }
    assert_redirected_to library_path(assigns(:library))
  end

  test "should destroy library" do
    assert_difference('Library.count', -1) do
      delete :destroy, id: @library
    end

    assert_redirected_to libraries_path
  end
end
