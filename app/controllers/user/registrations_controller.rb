class User::RegistrationsController < ApplicationController
  before_action :set_user_registration, only: %i[ show edit update destroy ]

  # GET /user/registrations or /user/registrations.json
  def index
    @user_registrations = User::Registration.all
  end

  # GET /user/registrations/1 or /user/registrations/1.json
  def show
  end

  # GET /user/registrations/new
  def new
    @user_registration = User::Registration.new
  end

  # GET /user/registrations/1/edit
  def edit
  end

  # POST /user/registrations or /user/registrations.json
  def create
    @user_registration = User::Registration.new(user_registration_params)

    respond_to do |format|
      if @user_registration.save
        format.html { redirect_to @user_registration, notice: "Registration was successfully created." }
        format.json { render :show, status: :created, location: @user_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/registrations/1 or /user/registrations/1.json
  def update
    respond_to do |format|
      if @user_registration.update(user_registration_params)
        format.html { redirect_to @user_registration, notice: "Registration was successfully updated." }
        format.json { render :show, status: :ok, location: @user_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/registrations/1 or /user/registrations/1.json
  def destroy
    @user_registration.destroy
    respond_to do |format|
      format.html { redirect_to user_registrations_url, notice: "Registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_registration
      @user_registration = User::Registration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_registration_params
      params.require(:user_registration).permit(:name, :user_name, :password)
    end
end
