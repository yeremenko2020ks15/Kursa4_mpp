class CartsController < ApplicationController
  # before_action :set_cart, only: %i[ show edit update destroy ]
  respond_to :html, :json
  skip_before_action :verify_authenticity_token
  # GET /carts or /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1 or /carts/1.json
  def show
    @render_cart = false
  end

  # GET /carts/new
  # def new
  #   @cart = Cart.new
  # end

  def add
    if user_signed_in?
      @product = Product.find_by(id: params[:id])
      if params[:quantity].to_i <= @product.quantity
        quantity = params[:quantity].to_i
        current_orderable = @cart.orderables.find_by(product_id: @product.id)
        if current_orderable && quantity > 0
          current_orderable.update(quantity:)
        elsif quantity <= 0
          current_orderable.destroy
        else
          @cart.orderables.create(product: @product, quantity:)
        end
      else
        flash[:notice] = "Товар закінчився:("
      end
    end

    respond_to do |format|
      format.html do
        redirect_to '/'
      end
      format.json {render json: [json.replace('cart',
                                                   partial: 'cart/cart',
                                                   locals: { cart: @cart }),
                                 json.replace(@product)]}
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    # respond_to do |format|
    #   format.html do
    #     redirect_to '/'
    #   end
    #   format.json {render json: json.replace('cart',
    #                                           partial: 'cart/cart',
    #                                           locals: { cart: @cart })}
    # end
  end

  def create_order
    if @order_details.nil?
      @order_details = OrderDetail.create(user_id: current_user.id, cart_id: @cart.id, payment_type_id: 1, payment_id: 'some_text', completed: false, rejection: false)
      @cart.update(done: true)
      @cart.orderables.each do |orderable|
        if orderable.product.quantity - orderable.quantity < 0
          flash[:notice] = "Вибраного вами товару " + orderable.product.to_s + " недостатньо"
          break
        end
        orderable.product.update(quantity: (orderable.product.quantity - orderable.quantity))
      end
    end
    respond_to do |format|
      format.html do
        redirect_to '/'
      end
      format.json {render json: [json.replace('cart',
                                              partial: 'cart/cart',
                                              locals: { cart: @cart }),
                                 json.replace(@product)]}
    end
  end

  def add_address
    current_user.update(city: params[:city], address: params[:address])
  end

  # GET /carts/1/edit
  # def edit
  # end
  #
  # # POST /carts or /carts.json
  # def create
  #   @cart = Cart.new(cart_params)
  #
  #   respond_to do |format|
  #     if @cart.save
  #       format.html { redirect_to cart_url(@cart), notice: "Cart was successfully created." }
  #       format.json { render :show, status: :created, location: @cart }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @cart.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /carts/1 or /carts/1.json
  # def update
  #   respond_to do |format|
  #     if @cart.update(cart_params)
  #       format.html { redirect_to cart_url(@cart), notice: "Cart was successfully updated." }
  #       format.json { render :show, status: :ok, location: @cart }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @cart.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /carts/1 or /carts/1.json
  # def destroy
  #   @cart.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to carts_url, notice: "Cart was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_cart
  #     @cart = Cart.find(params[:id])
  #   end
  #
  #   # Only allow a list of trusted parameters through.
  #   def cart_params
  #     params.require(:cart).permit(:user_id, :total)
  #   end
end
