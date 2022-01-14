class UnitiesController < ApplicationController
  before_action :authenticate_account!
  layout "dashboard"
  
  before_action :set_unity, only: %i[ show edit update destroy ]

  # GET /unities or /unities.json
  def index
    @unities = Unity.all
  end

  # GET /unities/1 or /unities/1.json
  def show
  end

  # GET /unities/new
  def new
    @unity = Unity.new
  end

  # GET /unities/1/edit
  def edit
  end

  # POST /unities or /unities.json
  def create
    @unity = Unity.new(unity_params)

    respond_to do |format|
      if @unity.save
        format.html { redirect_to unity_url(@unity), notice: "Unity was successfully created." }
        format.json { render :show, status: :created, location: @unity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unities/1 or /unities/1.json
  def update
    respond_to do |format|
      if @unity.update(unity_params)
        format.html { redirect_to unity_url(@unity), notice: "Unity was successfully updated." }
        format.json { render :show, status: :ok, location: @unity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unities/1 or /unities/1.json
  def destroy
    @unity.destroy

    respond_to do |format|
      format.html { redirect_to unities_url, notice: "Unity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unity
      @unity = Unity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unity_params
      params.require(:unity).permit(:uid, :name, :decription, :status, :account_id)
    end
end
