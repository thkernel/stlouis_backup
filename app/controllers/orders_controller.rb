class OrdersController < ApplicationController
  before_action :authenticate_account!
  layout "dashboard"

  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @customers = Customer.all
    @tables = Table.all
    @foods = Food.all
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @customers = Customer.all
    @foods = Food.all
    @tables = Table.all
  end

  # POST /orders or /orders.json
  def create
    @order = current_account.orders.build(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        @customers = Customer.all
    @tables = Table.all
    @foods = Food.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:uid, :customer_id, :table_id, order_items_attributes: [:id,  :food_id, :quantity,  :price, :amount,  :_destroy])
    end
end
