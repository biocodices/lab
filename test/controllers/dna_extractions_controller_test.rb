require 'test_helper'

class DnaExtractionsControllerTest < ActionController::TestCase
  setup do
    @dna_extraction = dna_extractions(:one)
    @dna_extraction.gel_picture = fixture_file_upload('files/gel_pic.jpg')
    @dna_extraction.save!

    @control_dna = dna_extractions(:control)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:dna_extractions)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create dna_extraction' do
    assert_difference('DnaExtraction.count') do
      post :create, dna_extraction: {
        tag: @control_dna.tag
      }
    end

    assert_redirected_to dna_extraction_path(assigns(:dna_extraction))
  end

  test 'should get select_gel_picture' do
    get :select_gel_picture
    assert_response :success
  end

  test 'uploads a gel picture and associates it to DNAs' do
    dna_extraction = DnaExtraction.first
    dna_extraction.remove_gel_picture!
    dna_extraction.save!

    post :upload_gel_picture, gel_picture: {
      associated_dnas: [dna_extraction.id],
      image: fixture_file_upload('files/gel_pic.jpg')
    }

    assert_redirected_to dna_extractions_select_gel_picture_path
    assert_not_nil dna_extraction.reload.gel_picture.file
  end

  test 'removes a gel picture from a DNA' do
    dna_extraction = DnaExtraction.first
    dna_extraction.gel_picture = fixture_file_upload('files/gel_pic.jpg')
    dna_extraction.save!

    post :upload_gel_picture, gel_picture: {
      associated_dnas: [dna_extraction.id],
      # no param :image => should remove the associated gel picture
    }

    # dna_extraction.reload won't update the gel_picture for some reason
    # so I have to refetch this instance using the model class
    assert_nil DnaExtraction.first.gel_picture.file
  end

  test 'should get select_quantification_files' do
    get :select_quantification_files
    assert_response :success
  end

  test 'should show dna_extraction' do
    get :show, id: @dna_extraction
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @dna_extraction
    assert_response :success
  end

  test 'should update dna_extraction' do
    patch :update, id: @dna_extraction, dna_extraction: {
      date: @dna_extraction.date,
      notes: @dna_extraction.notes,
      old_id: @dna_extraction.old_id,
      sample_id: @dna_extraction.sample_id
    }

    assert_redirected_to dna_extraction_path(assigns(:dna_extraction))
  end

  test 'should destroy dna_extraction' do
    assert_difference('DnaExtraction.count', -1) do
      delete :destroy, id: @dna_extraction
    end

    assert_redirected_to dna_extractions_path
  end
end
