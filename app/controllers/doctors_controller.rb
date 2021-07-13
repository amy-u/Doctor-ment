class DoctorsController < ApplicationController
  before_action :set_doctor, only: [ :show, :edit, :update, :destroy ]

  # GET /doctors or /doctors.json
  def index
    @doctors = Doctor.all
    render template: "doctors/index.html.erb", layout: "application"
  end

  # GET /doctors/1 or /doctors/1.json
  def show
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors or /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      flash.notice = "Doctor was successfully created."
      redirect_to @doctor
    else
      flash.now.alert = @doctor.errors.full_messages.to_sentence
      render :new
    end
  end

  # PATCH/PUT /doctors/1 or /doctors/1.json
  def update
      if @doctor.update(doctor_params)
        flash.notice = "Doctor was successfully updated."
        redirect_to @doctor
      else
        flash.now.alert = @doctor.errors.full_messages.to_sentence
        render :edit
      end
end

  # DELETE /doctors/1 or /doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to doctors_url, notice: "Doctor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.require(:doctor).permit(:doctor_name, :phone_number, :hospital_name, :address, :user_id)
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception")
      flash.alert = e.to_s
      redirect_to customers_path
    end
  end