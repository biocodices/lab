require 'test_helper'

class StudiesControllerTest < ActionController::TestCase
  setup do
    @study = studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studies_by_year_and_project)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create study" do
    assert_difference('Study.count') do
      post :create, study: { admission_date: @study.admission_date, doctor_email: @study.doctor_email, doctor_full_name: @study.doctor_full_name, institution: @study.institution, note: @study.note, patient_id: @study.patient_id, project_id: @study.project_id, request_category: @study.request_category, request_date: @study.request_date, tag: @study.tag }
    end

    assert_redirected_to study_path(assigns(:study))
  end

  test "should show study" do
    get :show, id: @study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study
    assert_response :success
  end

  test "should update study" do
    patch :update, id: @study, study: { admission_date: @study.admission_date, doctor_email: @study.doctor_email, doctor_full_name: @study.doctor_full_name, institution: @study.institution, note: @study.note, patient_id: @study.patient_id, project_id: @study.project_id, request_category: @study.request_category, request_date: @study.request_date, tag: @study.tag }
    assert_redirected_to study_path(assigns(:study))
  end

  test "should destroy study" do
    assert_difference('Study.count', -1) do
      delete :destroy, id: @study
    end

    assert_redirected_to studies_path
  end
end
