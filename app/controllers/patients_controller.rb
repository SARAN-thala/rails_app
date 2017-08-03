class PatientsController < ApplicationController
  include PatientsHelper
  # before_action :set_page, only: [:index]
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  # PATIENTS_PER_PAGE = 5
  def index
    params[:per_page] ||= 5
    # params[:page_number] ||= 1
    @page = params[:page_number] || 1
    @patients = Patient.paginate(params[:per_page], @page).all
    # @patients = Patient.paginate(params[:per_page], @page).all
    # @patients = Patient.paginate(params[:PATIENTS_PER_PAGE], @page).all
    # @patients = Patient.order(created_at: :desc).limit(PATIENTS_PER_PAGE).offset(@page * PATIENTS_PER_PAGE)
    # @patients = Patient.order(created_at: :asc).limit(5).offset(@page * 5)
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name)
    end

    # def set_page
    #   @page = params[:page_number] || 0
    # end
end
