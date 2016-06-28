class DnaSamplesController < ApplicationController
  before_action :set_dna_sample, only: [:show, :edit, :update, :destroy]

  # GET /dna_samples
  def index
    @dna_samples = DnaSample.all.decorate
  end

  # GET /dna_samples/1
  def show
  end

  # GET /dna_samples/new
  def new
    @dna_sample = DnaSample.new
  end

  # GET /dna_samples/1/edit
  def edit
  end

  # POST /dna_samples
  def create
    @dna_sample = DnaSample.new(dna_sample_params)

    if @dna_sample.save
      redirect_to @dna_sample, notice: 'Dna sample was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dna_samples/1
  def update
    if @dna_sample.update(dna_sample_params)
      redirect_to @dna_sample, notice: 'Dna sample was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dna_samples/1
  def destroy
    @dna_sample.destroy
    redirect_to dna_samples_url, notice: 'Dna sample was successfully destroyed.'
  end

  def select_quantification_files
    render :select_quantification_files
  end

  def upload_quantification_files
    if !params[:nanodrop_file] && !params[:qubit_file]
      redirect_to dna_samples_url, alert: 'No files uploaded' and return
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
    redirect_to dna_samples_url, notice: notice_text
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dna_sample
    @dna_sample = DnaSample.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def dna_sample_params
    params.require(:dna_sample).permit(:sample_id, :old_id, :extraction_date,
                                       :notes)
  end
end
