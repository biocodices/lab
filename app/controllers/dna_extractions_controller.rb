class DnaExtractionsController < ApplicationController
  before_action :set_dna_sample, only: [:show, :edit, :update, :destroy]

  # GET /dna_extractions
  def index
    @dna_extractions = DnaExtraction.all.decorate
  end

  # GET /dna_extractions/1
  def show
  end

  # GET /dna_extractions/new
  def new
    @dna_extraction = DnaExtraction.new
  end

  # GET /dna_extractions/1/edit
  def edit
  end

  # POST /dna_extractions
  def create
    @dna_extraction = DnaExtraction.new(dna_sample_params)

    if @dna_extraction.save
      redirect_to @dna_extraction, notice: 'Dna sample was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dna_extractions/1
  def update
    if @dna_extraction.update(dna_sample_params)
      redirect_to @dna_extraction, notice: 'Dna sample was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dna_extractions/1
  def destroy
    @dna_extraction.destroy
    redirect_to dna_extractions_url, notice: 'Dna sample was successfully destroyed.'
  end

  def select_quantification_files
    @dna_extractions = DnaExtraction.all.decorate
    render :select_quantification_files
  end

  def upload_quantification_files
    if !params[:nanodrop_file] && !params[:qubit_file]
      redirect_to dna_extractions_url, alert: 'No files uploaded' and return
    end

    uploader = QuantificationUploader.new

    notice_lines = []

    if params[:nanodrop_file]
      uploader.store!(params[:nanodrop_file])
      tsv_filepath = uploader.file.file
      nanodrops = NanodropQuantification.save_records_from_tsv!(tsv_filepath)
      notice_lines << 'Nanodrop data loaded.'
    end

    if params[:qubit_file]
      uploader.store!(params[:qubit_file])
      csv_filepath = uploader.file.file
      qubits = QubitQuantification.save_records_from_csv!(csv_filepath)
      notice_lines << 'Qubit data loaded.'
    end

    notice_text = notice_lines.join(' ')
    redirect_to dna_extractions_url, notice: notice_text
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dna_sample
    @dna_extraction = DnaExtraction.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def dna_sample_params
    params.require(:dna_extraction).permit(:sample_id, :old_id, :date, :notes)
  end
end
