require 'test_helper'

class SequencingsControllerTest < ActionController::TestCase
  setup do
    @sequencing = sequencings(:one)

    LibraryDna.destroy_all
    LibraryDna.create(library: Library.last,
                      dna_extraction: dna_extractions(:one))

    @library_dnas = LibraryDna.all
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:sequencings)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create sequencing' do
    assert_difference('Sequencing.count') do
      post :create, sequencing: {
        cycles_reads_1: @sequencing.cycles_reads_1,
        cycles_reads_2: @sequencing.cycles_reads_2,
        dal: @sequencing.dal,
        index_reads: @sequencing.index_reads,
        investigator_name: @sequencing.investigator_name,
        notes: @sequencing.notes,
        old_id: @sequencing.old_id,
        pal: @sequencing.pal,
        pre_seq_date: @sequencing.pre_seq_date,
        pre_seq_notes: @sequencing.pre_seq_notes,
        rcb: @sequencing.rcb,
        read_type: @sequencing.read_type,
        run_date: @sequencing.run_date,
        sample_prep_kit: @sequencing.sample_prep_kit,
        library_dna_ids: @library_dnas.map(&:id)
      }
    end

    assert_redirected_to sequencings_path
  end

  test 'should dissasociate library_dnas correctly' do
    # Make sure the @sequencing has some LibraryDnas associated for this test
    @sequencing.library_dnas = @library_dnas
    @sequencing.save!

    post :update, id: @sequencing, sequencing: {
      library_dna_ids: []
    }

    assert_empty @sequencing.reload.library_dnas
  end

  test 'should associate library_dnas correctly' do
    # Make sure the @sequencing has no LibraryDnas associated for his test
    @sequencing.library_dnas = []
    @sequencing.save!

    post :update, id: @sequencing, sequencing: {
      library_dna_ids: @library_dnas.map(&:id)
    }

    assert_equal @sequencing.reload.library_dnas, @library_dnas
  end

  test 'should show sequencing' do
    get :show, id: @sequencing
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @sequencing
    assert_response :success
  end

  test 'should update sequencing' do
    patch :update, id: @sequencing, sequencing: {
      cycles_reads_1: @sequencing.cycles_reads_1,
      cycles_reads_2: @sequencing.cycles_reads_2,
      dal: @sequencing.dal,
      index_reads: @sequencing.index_reads,
      investigator_name: @sequencing.investigator_name,
      notes: @sequencing.notes,
      old_id: @sequencing.old_id,
      pal: @sequencing.pal,
      pre_seq_date: @sequencing.pre_seq_date,
      pre_seq_notes: @sequencing.pre_seq_notes,
      rcb: @sequencing.rcb,
      read_type: @sequencing.read_type,
      run_date: @sequencing.run_date,
      sample_prep_kit: @sequencing.sample_prep_kit,
      library_dna_ids: @library_dnas.map(&:id)
    }

    assert_redirected_to sequencings_path
  end

  test 'should destroy sequencing' do
    assert_difference('Sequencing.count', -1) do
      delete :destroy, id: @sequencing
    end

    assert_redirected_to sequencings_path
  end
end
