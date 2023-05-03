class PrSubCategoriesController < ApplicationController
  before_action :set_pr_sub_category, only: %i[ show edit update destroy ]

  # GET /pr_sub_categories or /pr_sub_categories.json
  def index
    @pr_sub_categories = PrSubCategory.all
  end

  # GET /pr_sub_categories/1 or /pr_sub_categories/1.json
  def show
  end

  # GET /pr_sub_categories/new
  def new
    @pr_sub_category = PrSubCategory.new
  end

  # GET /pr_sub_categories/1/edit
  def edit
  end

  # POST /pr_sub_categories or /pr_sub_categories.json
  def create
    @pr_sub_category = PrSubCategory.new(pr_sub_category_params)

    respond_to do |format|
      if @pr_sub_category.save
        format.html { redirect_to pr_sub_category_url(@pr_sub_category), notice: "Pr sub category was successfully created." }
        format.json { render :show, status: :created, location: @pr_sub_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_sub_categories/1 or /pr_sub_categories/1.json
  def update
    respond_to do |format|
      if @pr_sub_category.update(pr_sub_category_params)
        format.html { redirect_to pr_sub_category_url(@pr_sub_category), notice: "Pr sub category was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_sub_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_sub_categories/1 or /pr_sub_categories/1.json
  def destroy
    @pr_sub_category.destroy

    respond_to do |format|
      format.html { redirect_to pr_sub_categories_url, notice: "Pr sub category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_sub_category
      @pr_sub_category = PrSubCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_sub_category_params
      params.require(:pr_sub_category).permit(:sub_category)
    end
end
