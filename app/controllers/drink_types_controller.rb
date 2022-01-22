class DrinkTypesController < ApplicationController
  before_action :set_drink_type, only: %i[ show edit update destroy ]

  # GET /drink_types or /drink_types.json
  def index
    @drink_types = DrinkType.all
  end

  # GET /drink_types/1 or /drink_types/1.json
  def show
  end

  # GET /drink_types/new
  def new
    @drink_type = DrinkType.new
  end

  # GET /drink_types/1/edit
  def edit
  end

  # POST /drink_types or /drink_types.json
  def create
    @drink_type = DrinkType.new(drink_type_params)

    respond_to do |format|
      if @drink_type.save
        format.html { redirect_to drink_type_url(@drink_type), notice: "Drink type was successfully created." }
        format.json { render :show, status: :created, location: @drink_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @drink_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drink_types/1 or /drink_types/1.json
  def update
    respond_to do |format|
      if @drink_type.update(drink_type_params)
        format.html { redirect_to drink_type_url(@drink_type), notice: "Drink type was successfully updated." }
        format.json { render :show, status: :ok, location: @drink_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @drink_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_types/1 or /drink_types/1.json
  def destroy
    @drink_type.destroy

    respond_to do |format|
      format.html { redirect_to drink_types_url, notice: "Drink type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink_type
      @drink_type = DrinkType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drink_type_params
      params.require(:drink_type).permit(:uid, :name, :description, :status, :account_id)
    end
end
