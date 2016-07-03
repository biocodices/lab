class LibrariesController < ApplicationController
  include ApplicationHelper

  before_action :set_library, only: [:show, :edit, :update, :destroy]
  before_action :set_available_dnas, only: [:new, :edit]

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
  end

  # GET /libraries/1/edit
  def edit
  end

  # POST /libraries
  def create
    @library = Library.new(library_params)
    get_associated_dnas

    if @library.save
      redirect_to libraries_url,
                  notice: "Library ##{@library.id} was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /libraries/1
  def update
    get_associated_dnas

    if @library.update(library_params)
      redirect_to libraries_url,
                  notice: "Library ##{@library.id} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /libraries/1
  def destroy
    @library.destroy
    redirect_to libraries_url,
                notice: "Library ##{@library.id} was successfully destroyed."
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end

  def set_available_dnas
    @dna_extractions = available_dnas @library, :libraries
  end

  def set_associated_dnas
    dna_extraction_ids = params[:library][:dna_extraction_ids].reject(&:empty?)
    @library.dna_extractions = dna_extraction_ids.map do |id|
      DnaExtraction.find(id)
    end
  end

  def library_params
    params.require(:library).permit(
      :laboratory, :notes, :hyp, :fpu, :pre_pcr_date, :pcr_date, :iap, :clp,
      :lnp, :sgp, :post_pcr_date
    )
  end
end
