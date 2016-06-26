require 'test_helper'

class NanodropQuantificationsControllerTest < ActionController::TestCase
  setup do
    @nanodrop_quantification = nanodrop_quantifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nanodrop_quantifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nanodrop_quantification" do
    assert_difference('NanodropQuantification.count') do
      post :create, nanodrop_quantification: { absorbance_260: @nanodrop_quantification.absorbance_260, absorbance_280: @nanodrop_quantification.absorbance_280, concentration: @nanodrop_quantification.concentration, dna_sample_id: @nanodrop_quantification.dna_sample_id, factor: @nanodrop_quantification.factor, ratio_260_230: @nanodrop_quantification.ratio_260_230, ratio_260_280: @nanodrop_quantification.ratio_260_280, sample_type: @nanodrop_quantification.sample_type }
    end

    assert_redirected_to nanodrop_quantification_path(assigns(:nanodrop_quantification))
  end

  test "should show nanodrop_quantification" do
    get :show, id: @nanodrop_quantification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nanodrop_quantification
    assert_response :success
  end

  test "should update nanodrop_quantification" do
    patch :update, id: @nanodrop_quantification, nanodrop_quantification: { absorbance_260: @nanodrop_quantification.absorbance_260, absorbance_280: @nanodrop_quantification.absorbance_280, concentration: @nanodrop_quantification.concentration, dna_sample_id: @nanodrop_quantification.dna_sample_id, factor: @nanodrop_quantification.factor, ratio_260_230: @nanodrop_quantification.ratio_260_230, ratio_260_280: @nanodrop_quantification.ratio_260_280, sample_type: @nanodrop_quantification.sample_type }
    assert_redirected_to nanodrop_quantification_path(assigns(:nanodrop_quantification))
  end

  test "should destroy nanodrop_quantification" do
    assert_difference('NanodropQuantification.count', -1) do
      delete :destroy, id: @nanodrop_quantification
    end

    assert_redirected_to nanodrop_quantifications_path
  end
end
