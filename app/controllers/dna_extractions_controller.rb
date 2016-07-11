class DnaExtractionsController < ApplicationController
  before_action :set_dna_sample, only: [:show, :edit, :update, :destroy]

  # GET /dna_extractions
  def index
    @dna_extractions = DnaExtraction.preload(
      :sample,
      :nanodrop_quantifications,
      :qubit_quantifications
    ).all.decorate
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
      redirect_to @dna_extraction, notice: 'DNA was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dna_extractions/1
  def update
    if @dna_extraction.update(dna_sample_params)
      redirect_to @dna_extraction, notice: 'DNA was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dna_extractions/1
  def destroy
    @dna_extraction.destroy
    redirect_to dna_extractions_url, notice: 'DNA was successfully destroyed.'
  end

  def select_quantification_files
    dna_ids_with_gel = DnaExtraction.all.to_a.keep_if(&:gel_picture?)
    @dna_extractions = {
      have_gel_picture: DnaExtraction.where(id: dna_ids_with_gel)
                                     .map(&:decorate),
      dont_have_gel_picture: DnaExtraction.where.not(id: dna_ids_with_gel)
                                          .map(&:decorate)
    }

    render :select_quantification_files
  end

  def upload_quantification_files
    if !params[:nanodrop_file] && !params[:qubit_file]
      redirect_to dna_extractions_url, alert: 'No files uploaded' and return
    end

    uploader = QuantificationUploader.new

    notice_lines = []

    if params[:nanodrop_file]
      uploader.store! params[:nanodrop_file] 
      tsv_filepath = uploader.file.file
      nanodrops = NanodropQuantification.save_records_from_tsv!(tsv_filepath)
      notice_lines << 'Nanodrop data loaded.'
    end

    if params[:qubit_file]
      uploader.store! params[:qubit_file] 
      csv_filepath = uploader.file.file
      qubits = QubitQuantification.save_records_from_csv!(csv_filepath)
      notice_lines << 'Qubit data loaded.'
    end

    redirect_to samples_path, notice: notice_lines.join(' ')
  end

  def upload_gel_picture
    if params[:gel_picture]
      associated_dnas = params[:gel_picture][:associated_dnas].keys
      associated_dnas.each do |dna_extraction_id|
        dna_extraction = DnaExtraction.find(dna_extraction_id)
        dna_extraction.gel_picture = params[:gel_picture][:image]
        dna_extraction.save!
      end

      notice = "Gel picture associated to #{associated_dnas.count} DNA extractions."
    else
      notice = 'No gel picture uploaded.'
    end

    redirect_to dna_extractions_url, notice: notice
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
