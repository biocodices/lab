class DnaExtractionsController < ApplicationController
  include DnaExtractionsHelper

  before_action :all_dnas, only: [:index, :select_quantification_files]
  before_action :set_dna_sample, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @dna_extraction = DnaExtraction.new
  end

  def edit
  end

  def create
    @dna_extraction = DnaExtraction.new(dna_sample_params)

    if @dna_extraction.save
      redirect_to @dna_extraction, notice: 'DNA was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dna_extraction.update(dna_sample_params)
      redirect_to @dna_extraction, notice: 'DNA was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dna_extraction.destroy
    redirect_to dna_extractions_url, notice: 'DNA was successfully destroyed.'
  end

  def select_quantification_files
    dna_ids_with_gel = DnaExtraction.all.to_a.keep_if(&:gel_picture?)
    @dna_extractions_by_pic = {
      have_a_gel_picture: DnaExtraction.where(id: dna_ids_with_gel)
                                       .map(&:decorate),
      dont_have_a_gel_picture: DnaExtraction.where.not(id: dna_ids_with_gel)
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

    redirect_to dna_extractions_select_quantification_files_url, notice: notice
  end

  private

  def all_dnas
    @dna_extractions = DnaExtraction.preload(
      :sample,
      :nanodrop_quantifications,
      :qubit_quantifications
    ).all.decorate.reverse
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_dna_sample
    @dna_extraction = DnaExtraction.find(params[:id]).decorate
  end

  # Only allow a trusted parameter "white list" through.
  def dna_sample_params
    params.require(:dna_extraction).permit(:sample_id, :old_id, :date, :notes)
  end
end
