require 'test_helper'

class SamplesControllerTest < ActionController::TestCase
  setup do
    @sample = samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample" do
    assert_difference('Sample.count') do
      post :create, sample: { 
        admission_date: @sample.admission_date,
        barcode: @sample.barcode,
        doctor_email: @sample.doctor_email,
        doctor_full_name: @sample.doctor_full_name,
        institution: @sample.institution,
        notes: @sample.notes,
        old_id: @sample.old_id,
        patient_id: @sample.patient_id,
        project_id: @sample.project_id,
        request_category: @sample.request_category,
        request_date: @sample.request_date
      }
    end

    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should show sample" do
    get :show, id: @sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample
    assert_response :success
  end

  test "should update sample" do
    patch :update, id: @sample, sample: {
      admission_date: @sample.admission_date,
      barcode: @sample.barcode,
      doctor_email: @sample.doctor_email,
      doctor_full_name: @sample.doctor_full_name,
      institution: @sample.institution,
      notes: @sample.notes,
      old_id: @sample.old_id,
      patient_id: @sample.patient_id,
      project_id: @sample.project_id,
      request_category: @sample.request_category,
      request_date: @sample.request_date 
    }

    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should destroy sample" do
    assert_difference('Sample.count', -1) do
      delete :destroy, id: @sample
    end

    assert_redirected_to samples_path
  end
end
