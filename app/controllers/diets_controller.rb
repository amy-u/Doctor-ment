class DietsController < ApplicationController
  before_action :set_diet, only: [ :show, :edit, :update, :destroy ]

  # GET /diets or /diets.json
  def index
    @diets = Diet.all
    @users = User.all
    render tempate: "diets/index.html.erb", layout: "application"
  end

  # GET /diets/1 or /diets/1.json
  def show
  end

  # GET /diets/new
  def new
    @diet = Diet.new
  end

  # GET /diets/1/edit
  def edit
  end

  # POST /diets or /diets.json
  def create
    @diet = Diet.new(diet_params)

    if @diet.save
      flash.notice = "Diet was successfully created."
      redirect_to @diet
    else
      flash.now.alert = @diet.errors.full_messages.to_sentence
      render :new
    end
  end

  # PATCH/PUT /diets/1 or /diets/1.json
  def update
    if @diet.update(diet_params)
      flash.notice = "Diet was successfully updated."
      redirect_to @diet
    else
      flash.now.alert = @diet.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /diets/1 or /diets/1.json
  def destroy
    @diet.destroy
    respond_to do |format|
      format.html { redirect_to diets_url, notice: "Diet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = Diet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diet_params
      params.require(:diet).permit(:name, :photo, :description, :meal_time, :user_id)
    end
    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception")
      flash.alert = e.to_s
      redirect_to diets_path
    end
end