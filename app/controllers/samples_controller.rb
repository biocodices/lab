class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]
  before_action :set_form_options, only: [:new, :edit]

  # GET /samples
  def index
    @samples = Sample.all.decorate.reverse
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
    @sample.patient ||= Patient.create(patient_params)

    if !@sample.patient.valid?
      @sample.errors.add(:patient,
                         @sample.patient.errors.messages.values.join(', '))
    end

    if @sample.errors.count.zero? && @sample.save
      redirect_to @sample, notice: 'Sample was successfully created.'
    else
      set_form_options
      render :new
    end
  end

  # PATCH/PUT /samples/1
  def update
    @sample.attributes = sample_params
    @sample.patient ||= Patient.create(patient_params)

    if @sample.save
      redirect_to @sample, notice: 'Sample was successfully updated.'
    else
      set_form_options
      set_sample
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
    # In case a new Patient will be associated to the sample
    @patient = Patient.new

    @form_options = {
      institutions: Sample.pluck(:institution).uniq.reverse,
      doctor_names: Sample.pluck(:doctor_full_name).uniq.reject(&:blank?).reverse,
      doctor_emails: Sample.pluck(:doctor_email).uniq.reject(&:blank?).reverse,
      request_categories: Sample.pluck(:request_category).uniq
    }
  end

  def sample_params
    params.require(:sample).permit(:institution, :doctor_full_name, :doctor_email, :request_date, :admission_date, :request_category, :notes, :project_id, :old_id, :patient_id, :barcode)
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :acronym,
                                    :birthdate)
  end
end
