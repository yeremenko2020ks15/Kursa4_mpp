class PrBrandsController < ApplicationController
  before_action :set_pr_brand, only: %i[ show edit update destroy ]

  # GET /pr_brands or /pr_brands.json
  def index
    @pr_brands = PrBrand.all
  end

  # GET /pr_brands/1 or /pr_brands/1.json
  def show
  end

  # GET /pr_brands/new
  def new
    @pr_brand = PrBrand.new
  end

  # GET /pr_brands/1/edit
  def edit
  end

  # POST /pr_brands or /pr_brands.json
  def create
    @pr_brand = PrBrand.new(pr_brand_params)

    respond_to do |format|
      if @pr_brand.save
        format.html { redirect_to pr_brand_url(@pr_brand), notice: "Pr brand was successfully created." }
        format.json { render :show, status: :created, location: @pr_brand }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_brands/1 or /pr_brands/1.json
  def update
    respond_to do |format|
      if @pr_brand.update(pr_brand_params)
        format.html { redirect_to pr_brand_url(@pr_brand), notice: "Pr brand was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_brand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_brands/1 or /pr_brands/1.json
  def destroy
    @pr_brand.destroy

    respond_to do |format|
      format.html { redirect_to pr_brands_url, notice: "Pr brand was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_brand
      @pr_brand = PrBrand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_brand_params
      params.require(:pr_brand).permit(:brand)
    end
end
