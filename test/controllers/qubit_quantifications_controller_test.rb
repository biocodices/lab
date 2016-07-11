require 'test_helper'

class QubitQuantificationsControllerTest < ActionController::TestCase
  setup do
    @qubit_quantification = qubit_quantifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qubit_quantifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qubit_quantification" do
    assert_difference('QubitQuantification.count') do
      post :create, qubit_quantification: { assay_concentration: @qubit_quantification.assay_concentration, assay_type: @qubit_quantification.assay_type, dilution_factor: @qubit_quantification.dilution_factor, dna_extraction_id: @qubit_quantification.dna_extraction_id, excitation: @qubit_quantification.excitation, far_red_rfu: @qubit_quantification.far_red_rfu, green_rfu: @qubit_quantification.green_rfu, sample_vol: @qubit_quantification.sample_vol, std1_rfu: @qubit_quantification.std1_rfu, std2_rfu: @qubit_quantification.std2_rfu, std3_rfu: @qubit_quantification.std3_rfu, stock_concentration: @qubit_quantification.stock_concentration }
    end

    assert_redirected_to qubit_quantification_path(assigns(:qubit_quantification))
  end

  test "should show qubit_quantification" do
    get :show, id: @qubit_quantification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qubit_quantification
    assert_response :success
  end

  test "should update qubit_quantification" do
    patch :update, id: @qubit_quantification, qubit_quantification: { assay_concentration: @qubit_quantification.assay_concentration, assay_type: @qubit_quantification.assay_type, dilution_factor: @qubit_quantification.dilution_factor, dna_extraction_id: @qubit_quantification.dna_extraction_id, excitation: @qubit_quantification.excitation, far_red_rfu: @qubit_quantification.far_red_rfu, green_rfu: @qubit_quantification.green_rfu, sample_vol: @qubit_quantification.sample_vol, std1_rfu: @qubit_quantification.std1_rfu, std2_rfu: @qubit_quantification.std2_rfu, std3_rfu: @qubit_quantification.std3_rfu, stock_concentration: @qubit_quantification.stock_concentration }
    assert_redirected_to qubit_quantification_path(assigns(:qubit_quantification))
  end

  test "should destroy qubit_quantification" do
    assert_difference('QubitQuantification.count', -1) do
      delete :destroy, id: @qubit_quantification
    end

    assert_redirected_to 'dna_extractions/select_quantification_files'
  end
end
