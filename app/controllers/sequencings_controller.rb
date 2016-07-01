class SequencingsController < ApplicationController
  before_action :set_sequencing, only: [:show, :edit, :update, :destroy]

  # GET /sequencings
  def index
    @sequencings = Sequencing.all.decorate
  end

  # GET /sequencings/1
  def show
  end

  # GET /sequencings/new
  def new
    @sequencing = Sequencing.new
  end

  # GET /sequencings/1/edit
  def edit
  end

  # POST /sequencings
  def create
    @sequencing = Sequencing.new(sequencing_params)

    if @sequencing.save
      redirect_to @sequencing, notice: 'Sequencing was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sequencings/1
  def update
    if @sequencing.update(sequencing_params)
      redirect_to @sequencing, notice: 'Sequencing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sequencings/1
  def destroy
    @sequencing.destroy
    redirect_to sequencings_url, notice: 'Sequencing was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequencing
      @sequencing = Sequencing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sequencing_params
      params.require(:sequencing).permit(:pal, :dal, :pre_seq_date, :pre_seq_notes, :investigator_name, :rcb, :sample_prep_kit, :index_reads, :read_type, :cycles_reads_1, :cycles_reads_2, :run_date, :notes, :old_id)
    end
end
