class ProductInventoriesController < ApplicationController
  before_action :set_product_inventory, only: %i[ show edit update destroy ]

  # GET /product_inventories or /product_inventories.json
  def index
    @product_inventories = ProductInventory.all
  end

  # GET /product_inventories/1 or /product_inventories/1.json
  def show
  end

  # GET /product_inventories/new
  def new
    @product_inventory = ProductInventory.new
  end

  # GET /product_inventories/1/edit
  def edit
  end

  # POST /product_inventories or /product_inventories.json
  def create
    @product_inventory = ProductInventory.new(product_inventory_params)

    respond_to do |format|
      if @product_inventory.save
        format.html { redirect_to product_inventory_url(@product_inventory), notice: "Product inventory was successfully created." }
        format.json { render :show, status: :created, location: @product_inventory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_inventories/1 or /product_inventories/1.json
  def update
    respond_to do |format|
      if @product_inventory.update(product_inventory_params)
        format.html { redirect_to product_inventory_url(@product_inventory), notice: "Product inventory was successfully updated." }
        format.json { render :show, status: :ok, location: @product_inventory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_inventories/1 or /product_inventories/1.json
  def destroy
    @product_inventory.destroy

    respond_to do |format|
      format.html { redirect_to product_inventories_url, notice: "Product inventory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_inventory
      @product_inventory = ProductInventory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_inventory_params
      params.require(:product_inventory).permit(:product_id, :price, :quantity)
    end
end
