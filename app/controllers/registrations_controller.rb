class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :edit, :update, :destroy]
  authorize_resource
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
  end

  # GET /registrations/new
  def new
    @registration = Registration.new 
    @registration.camp_id = params[:id] unless params[:id].nil?
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)
      if @registration.save
        redirect_to @registration.camp, notice:"The registration was created successfully"
      else
        render action: 'new'
      end
    
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    if @registration.update(registration_params)
        redirect_to @registration.camp, notice:"The registration was created successfully"
      else
        render action: 'edit'
      end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    camp=@registration.camp
    if @registration.destroy
      redirect_to camp_path(camp), notice: "Registration is removed from system"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:id,:temp_id, :camp_id, :student_id,:payment_status,:points_earned)
    end
end
