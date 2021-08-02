class MedicationsController < ApplicationController
  before_action :set_medication, only: [ :show, :edit, :update, :destroy ]

  def index
    @medications = Medication.all
    render template: "medications/index.html.erb", layout: "application"
  end

  def show
    @users = User.all
  end

  def new
    @medication = Medication.new
  end

  def edit
  end

  def create
    @medication = Medication.new(medication_params)
      if @medication.save
       flash.notice = "Medication was successfully created."
       redirect_to @medication
      else
        flash.now.alert = @medication.errors.full_messages.to_sentence
        render :new
      end
  end

  def update
      if @medication.update(medication_params)
       flash.notice = "Medication was successfully updated."
       redirect_to @medication
      else
        flash.now.alert = @medication.errors.full_messages.to_sentence
        render :edit
      end
  end

  def destroy
    @medication.destroy
    respond_to do |format|
      format.html { redirect_to medications_url, notice: "Medication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_medication
      @medication = Medication.find(params[:id])
    end

    def medication_params
      params.require(:medication).permit(:name, :quantity, :notes, :start_date, :user_id)
    end
    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception")
      flash.alert = e.to_s
      redirect_to medications_path
    end
end