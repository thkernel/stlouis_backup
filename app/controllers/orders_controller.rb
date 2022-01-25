class OrdersController < ApplicationController
   #authorize_resource, except: :food
   load_and_authorize_resource :except => [:food, :product]
   
  before_action :authenticate_account!
  layout "dashboard"

  #before_action :set_order, only: %i[ show edit update destroy generate_pdf ]
  before_action :set_order, only: [:show, :edit, :update,:generate_pdf, :destroy]
 
  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
    #render layout: "pdf"
  end

  def food 
    data = params[:data]
    
      puts "ID: #{data}"
      food = Food.find(data)
      puts "FOOD: #{food}"
      data = {:data => food}
      render :json => data
    
  end

  def product 
    data = params[:data]
    
      puts "ID: #{data}"
      product = Product.find(data)
      puts "Product: #{product.inspect}"
      data = {:data => product}
      render :json => data
    
  end


  # GET /orders/new
  def new
    @customers = Customer.all
    @tables = Table.all
    @foods = Food.all
    @products = Product.all
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @customers = Customer.all
    @foods = Food.all
    @products = Product.all
    @tables = Table.all
  end

  def scan_card
  end

  #For PDF
  def generate_pdf

    puts "REQUESTS: #{@order}"
    respond_to do |format|
        format.html
        format.pdf do
            render :pdf => "commande-#{@order.uid}-#{Time.now}", 
            layout: 'pdf',
            page_size: 'A4',
            template: "orders/pdf.html.erb",
            lowquality: true,
            zoom: 1,
            dpi: 75
        end
    end

    #render layout: "pdf"
  end


  def paynow
    order = Order.find_by(uid: params[:uid])
    respond_to do |format|
      if order.update_columns(paid: "Payée", status: "Confirmée", payment_method: "Espèce" , account_id: current_account.id)

        format.html { redirect_to orders_path, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      end
      
    end
  end
  

  # POST /orders or /orders.json
  def create
    @order = current_account.orders.build(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to show_order_path(uid: @order.uid), notice: "Commande créee avec succès." }
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


  def get_cancel
    @order = Order.find_by(uid: params[:uid])
    
  end

  def post_cancel
    @order = Order.find_by(uid: params[:uid])
    @order.update_column(:status, "Annulée")

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully canceled." }
      format.json { head :no_content }
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
      @order = Order.find_by(uid: params[:uid])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:uid, :customer_id, :table_id, :vip_space, order_items_attributes: [:id,  :food_id, :product_id, :quantity,  :price, :amount,  :_destroy])
     # , order_item_drinks_attributes: [:id,   :product_id, :quantity,  :unit_price, :amount,  :_destroy]
    end
end
