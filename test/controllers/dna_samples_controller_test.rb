require 'test_helper'

class DnaSamplesControllerTest < ActionController::TestCase
  setup do
    @dna_sample = dna_samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dna_samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dna_sample" do
    assert_difference('DnaSample.count') do
      post :create, dna_sample: { extraction_date: @dna_sample.extraction_date, notes: @dna_sample.notes, old_id: @dna_sample.old_id, sample_id: @dna_sample.sample_id }
    end

    assert_redirected_to dna_sample_path(assigns(:dna_sample))
  end

  test "should show dna_sample" do
    get :show, id: @dna_sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dna_sample
    assert_response :success
  end

  test "should update dna_sample" do
    patch :update, id: @dna_sample, dna_sample: { extraction_date: @dna_sample.extraction_date, notes: @dna_sample.notes, old_id: @dna_sample.old_id, sample_id: @dna_sample.sample_id }
    assert_redirected_to dna_sample_path(assigns(:dna_sample))
  end

  test "should destroy dna_sample" do
    assert_difference('DnaSample.count', -1) do
      delete :destroy, id: @dna_sample
    end

    assert_redirected_to dna_samples_path
  end
end
