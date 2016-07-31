require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  setup do
    @library = libraries(:one)
    @dna_extractions = dna_extractions(:one, :two, :three)
    @control_dna = dna_extractions(:control)

    LibraryDna.destroy_all
    LibraryDna.create(library: Library.last,
                      dna_extraction: dna_extractions(:one))
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create library' do
    assert_difference('Library.count') do
      post :create, library: {
        clp: @library.clp,
        fpu: @library.fpu,
        hyp: @library.hyp,
        iap: @library.iap,
        laboratory: @library.laboratory,
        lnp: @library.lnp,
        notes: @library.notes,
        old_id: @library.old_id,
        pcr_date: @library.pcr_date,
        post_pcr_date: @library.post_pcr_date,
        pre_pcr_date: @library.pre_pcr_date,
        sgp: @library.sgp,
        dna_extraction_ids: @dna_extractions.map(&:id)
      }
    end

    assert_redirected_to libraries_path
  end

  test 'should associate dna_extractions' do
    @library.dna_extractions = []
    @library.save!

    post :update, id: @library, library: {
      dna_extraction_ids: @dna_extractions.map(&:id)
    }

    assert_equal @library.reload.dna_extractions, @dna_extractions
  end

  test 'should dissasociate dna_extractions' do
    @library.dna_extractions = @dna_extractions
    @library.save!

    post :update, id: @library, library: {
      dna_extraction_ids: []
    }

    assert_empty @library.reload.dna_extractions
  end

  test 'can assign a control DNA' do
    post :update, id: @library, library: {
      dna_extraction_ids: [@control_dna.id]
    }

    assert_includes @library.reload.dna_extractions, @control_dna
  end

  test 'should show library' do
    get :show, id: @library
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @library
    assert_response :success
  end

  test 'should update library' do
    patch :update, id: @library, library: {
      clp: @library.clp,
      fpu: @library.fpu,
      hyp: @library.hyp,
      iap: @library.iap,
      laboratory: @library.laboratory,
      lnp: @library.lnp,
      notes: @library.notes,
      old_id: @library.old_id,
      pcr_date: @library.pcr_date,
      post_pcr_date: @library.post_pcr_date,
      pre_pcr_date: @library.pre_pcr_date,
      sgp: @library.sgp ,
      dna_extraction_ids: @dna_extractions.map(&:id)
    }

    assert_redirected_to libraries_path
  end

  test 'should destroy library' do
    assert_difference('Library.count', -1) do
      delete :destroy, id: @library
    end

    assert_redirected_to libraries_path
  end
end
