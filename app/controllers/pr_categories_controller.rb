class PrCategoriesController < ApplicationController
  before_action :set_pr_category, only: %i[ show edit update destroy ]

  # GET /pr_categories or /pr_categories.json
  def index
    @pr_categories = PrCategory.all
  end

  # GET /pr_categories/1 or /pr_categories/1.json
  def show
  end

  # GET /pr_categories/new
  def new
    @pr_category = PrCategory.new
  end

  # GET /pr_categories/1/edit
  def edit
  end

  # POST /pr_categories or /pr_categories.json
  def create
    @pr_category = PrCategory.new(pr_category_params)

    respond_to do |format|
      if @pr_category.save
        format.html { redirect_to pr_category_url(@pr_category), notice: "Pr category was successfully created." }
        format.json { render :show, status: :created, location: @pr_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_categories/1 or /pr_categories/1.json
  def update
    respond_to do |format|
      if @pr_category.update(pr_category_params)
        format.html { redirect_to pr_category_url(@pr_category), notice: "Pr category was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_categories/1 or /pr_categories/1.json
  def destroy
    @pr_category.destroy

    respond_to do |format|
      format.html { redirect_to pr_categories_url, notice: "Pr category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_category
      @pr_category = PrCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_category_params
      params.require(:pr_category).permit(:category)
    end
end
