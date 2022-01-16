class OrdersController < ApplicationController
   authorize_resource
   
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

  def food 
    data = params[:data]
    
      puts "ID: #{data}"
      food = Food.find(data)
      puts "FOOD: #{food}"
      data = {:data => food}
      render :json => data
    
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

  def paynow
    order = Order.find_by(uid: params[:uid])
    respond_to do |format|
      if  order.update_columns(paid: "Payée", status: "Validée", treator_id: current_user.id)

        order_items = order.order_items

        @total_commission = 0.0
        @total_commercial_commission_xof = 0.0
        @total_stockholder_employee_commission_xof = 0.0

        order_items.each do |order_item|
          product = Product.find(order_item.product_id)

          user = User.find(current_user.id)

          if user.commercial?
            @total_commission += product.margin_xof * order_item.quantity
            @total_commercial_commission_xof += product.commercial_commission_xof * order_item.quantity
          else
            @total_commission += product.margin_xof * order_item.quantity
            @total_stockholder_employee_commission_xof += product.stockholder_employee_commission_xof * order_item.quantity
          end
        end

        commission = current_user.commissions.build({order_id: order.id, commission_amount: @total_commission,
         commercial_commission_amount: @total_commercial_commission_xof, stockholder_employee_commission_amount: @total_stockholder_employee_commission_xof })

        if commission.save
          format.html {  redirect_to orders_path, notice: 'Commande payée avec succès.' }
        end
     
      end
    end
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

  def delete
      @order = Order.find_by(uid: params[:order_id])
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
