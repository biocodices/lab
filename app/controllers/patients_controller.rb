class PatientsController < ApplicationController
  before_action :set_patients, only: [:index, :upload_reports]
  before_action :set_patient, only: [:show, :edit, :update, :destroy, :upload_report]

  def index
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient, notice: 'Patient was successfully created.'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
    if @patient.update(patient_params)
        format.html {
          redirect_to @patient, notice: 'Patient was successfully updated.'
        }
        format.json { render json: @patient, status: :saved }
      else
        format.html { render :edit }
        format.json {
          render json: @patient.errors, status: :unprocessable_entity
        }
      end
    end

  end

  def destroy
    @patient.destroy
    redirect_to patients_url, notice: 'Patient was successfully destroyed.'
  end

  def upload_reports
  end

  private

  def set_patients
    @patients = Patient.preload(:samples).all.decorate.reverse
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :acronym, :birthdate)
  end
end
