class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]
  before_action :set_form_options, only: [:new, :edit]

  # GET /samples
  def index
    @samples = Sample.all.decorate
  end

  # GET /samples/1
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
  end

  # POST /samples
  def create
    @sample = Sample.new(sample_params)

    if @sample.save
      redirect_to @sample, notice: 'Sample was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /samples/1
  def update
    if @sample.update(sample_params)
      redirect_to @sample, notice: 'Sample was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /samples/1
  def destroy
    @sample.destroy
    redirect_to samples_url, notice: 'Sample was successfully destroyed.'
  end

  private
    def set_sample
      @sample = Sample.find(params[:id])
    end

    def set_form_options
      @form_options = {
        institutions: Sample.pluck(:institution).uniq,
        projects: Project.pluck(:tag, :id),
        # patients: Patient.all.map{ |p| [p.full_name, p.id] },
        doctor_names: Sample.pluck(:doctor_full_name).uniq.reject(&:blank?),
        doctor_emails: Sample.pluck(:doctor_email).uniq.reject(&:blank?),
        request_categories: Sample.pluck(:request_category).uniq,
      }
    end

    def sample_params
      params.require(:sample).permit(:institution, :doctor_full_name, :doctor_email, :request_date, :admission_date, :request_category, :notes, :project_id, :old_id, :patient_id, :barcode)
    end
end
