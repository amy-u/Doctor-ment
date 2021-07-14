class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def index
    @users = User.all
    render template: "users/index.html.erb", layout: "application"
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
      if @user.save
        flash.notice = "User was successfully created."
        redirect_to @user
      else
        flash.now.alert = @user.errors.full_messages.to_sentence
        render :new
      end
  end

  def update
      if @user.update(user_params)
        flash.notice = "User was successfully updated."
        redirect_to @user
      else
        flash.now.alert = @user.errors.full_messages.to_sentence
        render :edit
      end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :number, :photo, :allergic, :member_ID)
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception")
      flash.alert = e.to_s
      redirect_to customers_path
    end
end