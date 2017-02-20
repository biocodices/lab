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
    parameters = study_params
    samples = parameters.delete('samples')

    @study = Study.new(parameters)

    # Try to create associated Samples
    if samples
      @study.errors.add(:samples, 'No samples associated with this study?')
    else
      samples = samples.split(',').map(&:strip)
      samples.map { |tag| Sample.create(study: @study, tag: tag) }
      # TODO: validate the samples were correctly created!
    end

    @study.patient = Patient.find_or_create_by(patient_params)

    if !@study.patient.valid?
      @study.errors.add(:patient,
                        @study.patient.errors.messages.values.join(', '))
    end

    if @study.errors.count.zero? && @study.save
      redirect_to @study, notice: 'Study was successfully created.'
    else
      set_form_options
      render :new
    end
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
