class QubitQuantificationsController < ApplicationController
  before_action :set_qubit_quantification, only: [:show, :edit, :update, :destroy]

  # GET /qubit_quantifications
  def index
    @qubit_quantifications = QubitQuantification.all
  end

  # GET /qubit_quantifications/1
  def show
  end

  # GET /qubit_quantifications/new
  def new
    @qubit_quantification = QubitQuantification.new
  end

  # GET /qubit_quantifications/1/edit
  def edit
  end

  # POST /qubit_quantifications
  def create
    @qubit_quantification = QubitQuantification.new(qubit_quantification_params)

    if @qubit_quantification.save
      redirect_to @qubit_quantification, notice: 'Qubit quantification was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /qubit_quantifications/1
  def update
    if @qubit_quantification.update(qubit_quantification_params)
      redirect_to @qubit_quantification, notice: 'Qubit quantification was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /qubit_quantifications/1
  def destroy
    @qubit_quantification.destroy
    redirect_to 'dna_extractions/select_quantification_files', notice: 'Qubit quantification was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qubit_quantification
      @qubit_quantification = QubitQuantification.find(params[:id]).decorate
    end

    # Only allow a trusted parameter "white list" through.
    def qubit_quantification_params
      params.require(:qubit_quantification).permit(:assay_concentration, :stock_concentration, :assay_type, :sample_vol, :dilution_factor, :std1_rfu, :std2_rfu, :std3_rfu, :excitation, :green_rfu, :far_red_rfu, :dna_sample_id)
    end
end
