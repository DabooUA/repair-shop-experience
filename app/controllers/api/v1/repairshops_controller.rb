class Api::V1::RepairshopsController < ApplicationController
  before_action :set_repairshop, only: [:show, :update, :destroy]

  # GET /repairshops
  def index
    if logged_in?
      @repairshops = current_user.repairshop
      render json: @repairshops
    else
      render json: {
        error: "You must be logged in to see the repairshops experience reviews."
      }
  end

  # GET /repairshops/1
  def show
    render json: @repairshop
  end

  # POST /repairshops
  def create
    @repairshop = Repairshop.new(repairshop_params)

    if @repairshop.save
      render json: @repairshop, status: :created, location: @repairshop
    else
      render json: @repairshop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repairshops/1
  def update
    if @repairshop.update(repairshop_params)
      render json: @repairshop
    else
      render json: @repairshop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repairshops/1
  def destroy
    @repairshop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repairshop
      @repairshop = Repairshop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repairshop_params
      params.require(:repairshop).permit(:repair_shop_name, :street_address, :city, :state, :zip_code)
    end
end
