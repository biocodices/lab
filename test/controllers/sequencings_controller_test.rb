require 'test_helper'

class SequencingsControllerTest < ActionController::TestCase
  setup do
    @sequencing = sequencings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sequencings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sequencing" do
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
        rcb: @sequencing.rcb, read_type: @sequencing.read_type, run_date: @sequencing.run_date, sample_prep_kit: @sequencing.sample_prep_kit,
        dna_extraction_ids: dna_extractions(:one, :two)
      }
    end

    assert_redirected_to sequencings_path
  end

  test "should show sequencing" do
    get :show, id: @sequencing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sequencing
    assert_response :success
  end

  test "should update sequencing" do
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
      rcb: @sequencing.rcb, read_type: @sequencing.read_type, run_date: @sequencing.run_date, sample_prep_kit: @sequencing.sample_prep_kit,
      dna_extraction_ids: dna_extractions(:one, :two)
    }

    assert_redirected_to sequencings_path
  end

  test "should destroy sequencing" do
    assert_difference('Sequencing.count', -1) do
      delete :destroy, id: @sequencing
    end

    assert_redirected_to sequencings_path
  end
end
