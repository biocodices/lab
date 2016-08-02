class DnaExtractionsController < ApplicationController
  include DnaExtractionsHelper

  before_action :set_dna_sample, only: [:show, :edit, :update, :destroy]

  def index
    @dna_extractions = DnaExtraction.preload(
      :sample,
      :nanodrop_quantifications,
      :qubit_quantifications
    ).all_but_controls.decorate.reverse

    @control_dnas = DnaExtraction.control.decorate
  end

  def show
  end

  def new
    @dna_extraction = DnaExtraction.new
  end

  def edit
  end

  def create
    @dna_extraction = DnaExtraction.new(dna_extraction_params)

    if @dna_extraction.save
      redirect_to @dna_extraction, notice: 'DNA was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dna_extraction.update(dna_extraction_params)
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
      NanodropQuantification.save_records_from_tsv!(tsv_filepath)
      notice_lines << 'Nanodrop data loaded.'
    end

    if params[:qubit_file]
      uploader.store! params[:qubit_file]
      csv_filepath = uploader.file.file
      QubitQuantification.save_records_from_csv!(csv_filepath)
      notice_lines << 'Qubit data loaded.'
    end

    redirect_to samples_path, notice: notice_lines.join(' ')
  end

  def select_gel_picture
    @dnas_by_gel_picture = DnaExtraction.grouped_by_gel_picture

    @dnas_by_gel_presence = {
      have_a_gel_picture: DnaExtraction.have_gel_picture.map(&:decorate),
      dont_have_a_gel_picture: DnaExtraction.dont_have_gel_picture.map(&:decorate)
    }

    render :select_gel_picture
  end

  def upload_gel_picture
    if params[:gel_picture]

      associated_dnas = DnaExtraction.find(
        params[:gel_picture][:associated_dnas]
      )

      if params[:gel_picture][:image]
        associated_dnas.each do |dna_extraction|
          dna_extraction.gel_picture = params[:gel_picture][:image]
          dna_extraction.save!
        end
        message = 'added to'
      else
        associated_dnas.each do |dna_extraction|
          dna_extraction.remove_gel_picture!
          dna_extraction.save!
        end
        message = 'removed from'
      end

      notice = "Gel picture #{message} #{associated_dnas.count} DNA extractions."

    else
      notice = 'No gel picture or Dna extractions selected.'
    end

    redirect_to dna_extractions_select_gel_picture_path, notice: notice
  end

  private

  def set_dna_sample
    @dna_extraction = DnaExtraction.find(params[:id]).decorate
  end

  def dna_extraction_params
    params.require(:dna_extraction).permit(:sample_id, :date, :notes, :tag)
  end
end
