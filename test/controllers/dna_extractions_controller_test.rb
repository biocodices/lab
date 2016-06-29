require 'test_helper'

class DnaExtractionsControllerTest < ActionController::TestCase
  setup do
    @dna_extraction = dna_extraction(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dna_extractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dna_extraction" do
    assert_difference('DnaExtraction.count') do
      post :create, dna_extraction: { extraction_date: @dna_extraction.extraction_date, notes: @dna_extraction.notes, old_id: @dna_extraction.old_id, sample_id: @dna_extraction.sample_id }
    end

    assert_redirected_to dna_extraction_path(assigns(:dna_extraction))
  end

  test "should show dna_extraction" do
    get :show, id: @dna_extraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dna_extraction
    assert_response :success
  end

  test "should update dna_extraction" do
    patch :update, id: @dna_extraction, dna_extraction: { extraction_date: @dna_extraction.extraction_date, notes: @dna_extraction.notes, old_id: @dna_extraction.old_id, sample_id: @dna_extraction.sample_id }
    assert_redirected_to dna_extraction_path(assigns(:dna_extraction))
  end

  test "should destroy dna_extraction" do
    assert_difference('DnaExtraction.count', -1) do
      delete :destroy, id: @dna_extraction
    end

    assert_redirected_to dna_extractions_path
  end
end
