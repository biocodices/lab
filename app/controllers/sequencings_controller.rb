class SequencingsController < ApplicationController
  before_action :set_sequencing, only: [:show, :edit, :update, :destroy]
  before_action :set_available_dnas, only: [:new, :edit]

  # GET /sequencings
  def index
    @sequencings = Sequencing.all.decorate
  end

  # GET /sequencings/1
  def show
  end

  # GET /sequencings/new
  def new
    @sequencing = Sequencing.new
  end

  # GET /sequencings/1/edit
  def edit
  end

  # POST /sequencings
  def create
    @sequencing = Sequencing.new(sequencing_params)
    set_associated_dnas

    if @sequencing.save
      redirect_to sequencings_url,
                  notice: "Sequencing ##{@sequencing.id} was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /sequencings/1
  def update
    set_associated_dnas

    if @sequencing.update(sequencing_params)
      redirect_to sequencings_url,
                  notice: "Sequencing ##{@sequencing.id} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /sequencings/1
  def destroy
    @sequencing.destroy
    redirect_to sequencings_url,
                notice: "Sequencing ##{@sequencing.id} was successfully destroyed."
  end

  private

  def set_sequencing
    @sequencing = Sequencing.find(params[:id])
  end

  def set_available_dnas
    selected_dna_ids = @sequencing ? @sequencing.dna_extraction_ids : []
    used_dna_ids = DnaExtraction.joins(:libraries).pluck(:id).uniq

    selected_dnas = DnaExtraction.find(selected_dna_ids).map(&:decorate)
    used_dnas = DnaExtraction.find(used_dna_ids - selected_dna_ids)
                             .map(&:decorate).reverse
    unused_dnas = DnaExtraction.where.not(id: used_dna_ids + selected_dna_ids)
                               .map(&:decorate).reverse

    @dna_extractions = {
      already_selected: selected_dnas,
      belong_to_a_sequencing: used_dnas,
      dont_belong_to_a_sequencing: unused_dnas
    }
  end

  def set_associated_dnas
    dna_extraction_ids = params[:sequencing][:dna_extraction_ids].reject(&:empty?)
    @sequencing.dna_extractions = dna_extraction_ids.map do |id|
      DnaExtraction.find(id)
    end
  end

  def sequencing_params
    params.require(:sequencing).permit(:pal, :dal, :pre_seq_date, :pre_seq_notes, :investigator_name, :rcb, :sample_prep_kit, :index_reads, :read_type, :cycles_reads_1, :cycles_reads_2, :run_date, :notes, :old_id)
  end
end
