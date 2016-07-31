class SequencingsController < ApplicationController
  include ApplicationHelper

  before_action :set_sequencing, only: [:show, :edit, :update, :destroy]
  before_action :set_available_dnas, only: [:new, :edit]

  def index
    @sequencings = Sequencing.preload(:dna_extractions).all.decorate
  end

  def show
  end

  def new
    @sequencing = Sequencing.new
  end

  def edit
  end

  def create
    @sequencing = Sequencing.new(sequencing_params)

    if @sequencing.save
      redirect_to sequencings_url,
                  notice: 'Sequencing was successfully created.'
    else
      render :new
    end
  end

  def update
    if @sequencing.update(sequencing_params)
      redirect_to sequencings_url,
                  notice: 'Sequencing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @sequencing.destroy
    redirect_to sequencings_url,
                notice: 'Sequencing was successfully destroyed.'
  end

  private

  def set_sequencing
    @sequencing = Sequencing.find(params[:id])
  end

  def set_available_dnas
    @library_dnas = {}

    LibraryDna.pluck(:library_id).uniq.each do |library_id|
      group_name = "library_#{library_id}"
      @library_dnas[group_name] = LibraryDna.where(library_id: library_id)
                                            .decorate
    end

    @library_dnas
  end

  def set_associated_dnas
    dna_extraction_ids = params[:sequencing][:dna_extraction_ids].reject(&:empty?)
    @sequencing.dna_extractions = dna_extraction_ids.map do |id|
      DnaExtraction.find(id)
    end
  end

  def sequencing_params
    params.require(:sequencing).permit(:pal, :dal, :pre_seq_date, :pre_seq_notes, :investigator_name, :rcb, :sample_prep_kit, :index_reads, :read_type, :cycles_reads_1, :cycles_reads_2, :run_date, :notes, :old_id, library_dna_ids: [])
  end
end
