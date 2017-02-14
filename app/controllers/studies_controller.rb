class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]

  def index
    all_studies = Study.all.order(id: :desc)

    @studies_by_year_and_project = {}

    by_year = all_studies.group_by { |study| study.admission_date.try(:year) }

    by_year.each do |year, year_studies|
      year_studies.group_by(&:project).each do |project, project_studies|
        @studies_by_year_and_project[year] ||= {}
        @studies_by_year_and_project[year][project] = \
          project_studies.map(&:decorate)
      end
    end

    @studies_by_year_and_project
  end

  def show
  end

  def new
    @study = Study.new
  end

  def edit
  end

  def create
    @study = Study.new(study_params)

    if @study.save
      redirect_to @study, notice: 'Study was successfully created.'
    else
      render :new
    end
  end

  def update
    if @study.update(study_params)
      redirect_to @study, notice: 'Study was successfully updated.'
    else
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
    params.require(:study).permit(:project_id, :patient_id, :tag, :note, :institution, :doctor_full_name, :doctor_email, :request_date, :admission_date, :request_category)
  end
end
