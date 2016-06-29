class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :edit, :update, :destroy]

  # GET /libraries
  def index
    @libraries = Library.all
  end

  # GET /libraries/1
  def show
  end

  # GET /libraries/new
  def new
    @library = Library.new
    used_dna_ids = DnaExtraction.joins(:libraries).pluck(:id).uniq
    used_dnas = DnaExtraction.find(used_dna_ids).map(&:decorate).reverse
    unused_dnas = DnaExtraction.where.not(id: used_dna_ids).map(&:decorate).reverse

    @dna_extractions = {
      belong_to_a_library: used_dnas,
      dont_belong_to_a_library: unused_dnas
    }
  end

  # GET /libraries/1/edit
  def edit
  end

  # POST /libraries
  def create
    @library = Library.new(library_params)

    if @library.save
      redirect_to @library, notice: 'Library was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /libraries/1
  def update
    if @library.update(library_params)
      redirect_to @library, notice: 'Library was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /libraries/1
  def destroy
    @library.destroy
    redirect_to libraries_url, notice: 'Library was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def library_params
      params.require(:library).permit(:laboratory, :notes, :hyp, :fpu, :pre_pcr_date, :pcr_date, :iap, :clp, :lnp, :sgp, :post_pcr_date, :old_id)
    end
end
