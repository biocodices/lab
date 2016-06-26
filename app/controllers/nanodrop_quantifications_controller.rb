class NanodropQuantificationsController < ApplicationController
  before_action :set_nanodrop_quantification, only: [:show, :edit, :update, :destroy]

  # GET /nanodrop_quantifications
  def index
    @nanodrop_quantifications = NanodropQuantification.all
  end

  # GET /nanodrop_quantifications/1
  def show
  end

  # GET /nanodrop_quantifications/new
  def new
    @nanodrop_quantification = NanodropQuantification.new
  end

  # GET /nanodrop_quantifications/1/edit
  def edit
  end

  # POST /nanodrop_quantifications
  def create
    @nanodrop_quantification = NanodropQuantification.new(nanodrop_quantification_params)

    if @nanodrop_quantification.save
      redirect_to @nanodrop_quantification, notice: 'Nanodrop quantification was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /nanodrop_quantifications/1
  def update
    if @nanodrop_quantification.update(nanodrop_quantification_params)
      redirect_to @nanodrop_quantification, notice: 'Nanodrop quantification was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /nanodrop_quantifications/1
  def destroy
    @nanodrop_quantification.destroy
    redirect_to nanodrop_quantifications_url, notice: 'Nanodrop quantification was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nanodrop_quantification
      @nanodrop_quantification = NanodropQuantification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nanodrop_quantification_params
      params.require(:nanodrop_quantification).permit(:concentration, :ratio_260_280, :ratio_260_230, :absorbance_280, :absorbance_260, :factor, :dna_sample_id, :sample_type)
    end
end
