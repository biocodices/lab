class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]
  before_action :set_form_options, only: [:new, :edit]

  def index
    @studies_by_year_and_project = sort_by_year_and_project(Study.all)
  end

  def show
  end

  def new
    @study = Study.new
  end

  def edit
  end

  def create
    # This creates a copy of the params that we can modify:
    parameters = study_params
    sample_names = parameters.delete('samples')
    patient_id = parameters.delete('patient_id')

    # We first need to create the Patient, since there can't be a Study
    # with no associated Patient:
    patient = if patient_id.blank?
                Patient.create(patient_params)
              else
                Patient.find(patient_id)
              end

    # We create the @study to store errors in it
    @study = Study.new(parameters)

    # If the patient is not valid, we stop the Study creation immediately:
    unless patient.valid?
      @study.errors.add(:patient, patient.errors.messages.values.join(', '))
      set_form_options
      render :new
    end

    # We can now assign the Patient to the Study and proceed:
    @study.patient = patient

    unless @study.save
      set_form_options
      render :new
    end

    # Next we have to create the Samples and associate them to this study
    sample_names = sample_names.split(',').map(&:strip)
    samples = samples.map { |tag| Sample.create(study: @study, tag: tag) }

    unless samples.map(&:valid?).all?
      #
      #
      #
      # FIXME: This is a problem !
      # We *already created* the @study, so we can't redirect to
      # render :new .... we should redirect to :edit
      # so think how we will create samples in Study#edit
      #
      #
      #
      error_messages = samples.map(&:errors).flatten.map(&:messages).flatten
      @study.errors.add(:samples, error_messages.map(&:values).join(', '))
      set_form_options
      render :new
    end

    redirect_to @study, notice: 'Study was successfully created.'
  end

  def update
    if @study.update(study_params)
      redirect_to @study, notice: 'Study was successfully updated.'
    else
      set_form_options
      set_study
      render :edit
    end
  end

  def destroy
    @study.destroy
    redirect_to studies_url, notice: 'Study was successfully destroyed.'
  end

  private

  def set_study
    @study = Study.find(params[:id])
  end

  def study_params
    params.require(:study).permit(
      :project_id,
      :patient_id,
      :tag,
      :note,
      :institution,
      :doctor_full_name,
      :doctor_email,
      :request_date,
      :admission_date,
      :request_category,
      :samples
    )
  end

  def patient_params
    params.require(:patient).permit(
      :first_name,
      :last_name,
      :acronym,
      :birthdate
    )
  end

  def sort_by_year_and_project(studies)
    studies_by_year_and_project = {}

    by_year = studies.group_by { |study| study.admission_date.try(:year) }

    by_year.each do |year, year_studies|
      by_project = year_studies.group_by(&:project)

      by_project.each do |project, project_studies|
        project_studies = project_studies.map(&:decorate)

        studies_by_year_and_project[year] ||= {}
        studies_by_year_and_project[year][project] = project_studies
      end
    end

    studies_by_year_and_project
  end

  def set_form_options
    # In case a new Patient will be associated to the study
    @patient = Patient.new

    @form_options = {
      institutions: Study.pluck(:institution).uniq.reverse,
      doctor_names: Study.pluck(:doctor_full_name).uniq.reject(&:blank?).reverse,
      doctor_emails: Study.pluck(:doctor_email).uniq.reject(&:blank?).reverse,
      request_categories: Study.pluck(:request_category).uniq
    }
  end
end
