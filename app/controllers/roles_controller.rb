class RolesController < ApplicationController
  before_action :authenticate_account!
  layout "dashboard"

  
  before_action :set_role, only: %i[ show edit update destroy ]

  # GET /roles or /roles.json
  def index
    @roles = Role.all
  end

  # GET /roles/1 or /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @role = Role.new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles or /roles.json
  def create
    @role = Role.new(role_params)

    respond_to do |format|
      if @role.save
        @roles = Role.all
        format.html { redirect_to role_url(@role), notice: "Role was successfully created." }
        format.json { render :show, status: :created, location: @role }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @role.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /roles/1 or /roles/1.json
  def update
    respond_to do |format|
      if @role.update(role_params)
        @roles = Role.all
        format.html { redirect_to role_url(@role), notice: "Role was successfully updated." }
        format.json { render :show, status: :ok, location: @role }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @role.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @role = Role.find_by(uid: params[:role_id])
    end

  # DELETE /roles/1 or /roles/1.json
  def destroy
    @role.destroy

    respond_to do |format|
      format.html { redirect_to roles_url, notice: "Role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_params
      params.require(:role).permit(:uid, :name, :description, :status)
    end
end
