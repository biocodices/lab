class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :edit, :update, :destroy]
  before_action :set_available_dnas, only: [:new, :edit]

  def index
    @libraries = Library.all
  end

  def show
  end

  def new
    @library = Library.new
  end

  def edit
  end

  def create
    @library = Library.new(library_params)

    if @library.save
      redirect_to libraries_url, notice: 'Library was successfully created.'
    else
      render :new
    end
  end

  def update
    if @library.update(library_params)
      redirect_to libraries_url, notice: 'Library was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @library.destroy
    redirect_to libraries_url, notice: 'Library was successfully destroyed.'
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end

  def set_available_dnas
    selected_dna_ids = @library ? @library.dna_extraction_ids : []
    used_dna_ids = DnaExtraction.joins(:libraries).pluck(:id).uniq
    selected_dnas = DnaExtraction.find(selected_dna_ids)
    used_dnas = DnaExtraction.find(used_dna_ids - selected_dna_ids)
    unused_dnas = DnaExtraction.where.not(id: used_dna_ids + selected_dna_ids)

    @dna_extractions = {
      used_in_libraries: used_dnas.map(&:decorate).reverse,
      unused: unused_dnas.map(&:decorate).reverse,
      already_selected: selected_dnas.map(&:decorate)
    }
  end

  def library_params
    params.require(:library).permit(
      :laboratory, :notes, :hyp, :fpu, :pre_pcr_date, :pcr_date, :iap, :clp,
      :lnp, :sgp, :post_pcr_date, dna_extraction_ids: []
    )
  end
end
