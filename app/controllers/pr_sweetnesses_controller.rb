class PrSweetnessesController < ApplicationController
  before_action :set_pr_sweetness, only: %i[ show edit update destroy ]

  # GET /pr_sweetnesses or /pr_sweetnesses.json
  def index
    @pr_sweetnesses = PrSweetness.all
  end

  # GET /pr_sweetnesses/1 or /pr_sweetnesses/1.json
  def show
  end

  # GET /pr_sweetnesses/new
  def new
    @pr_sweetness = PrSweetness.new
  end

  # GET /pr_sweetnesses/1/edit
  def edit
  end

  # POST /pr_sweetnesses or /pr_sweetnesses.json
  def create
    @pr_sweetness = PrSweetness.new(pr_sweetness_params)

    respond_to do |format|
      if @pr_sweetness.save
        format.html { redirect_to pr_sweetness_url(@pr_sweetness), notice: "Pr sweetness was successfully created." }
        format.json { render :show, status: :created, location: @pr_sweetness }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_sweetness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_sweetnesses/1 or /pr_sweetnesses/1.json
  def update
    respond_to do |format|
      if @pr_sweetness.update(pr_sweetness_params)
        format.html { redirect_to pr_sweetness_url(@pr_sweetness), notice: "Pr sweetness was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_sweetness }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_sweetness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_sweetnesses/1 or /pr_sweetnesses/1.json
  def destroy
    @pr_sweetness.destroy

    respond_to do |format|
      format.html { redirect_to pr_sweetnesses_url, notice: "Pr sweetness was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_sweetness
      @pr_sweetness = PrSweetness.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_sweetness_params
      params.require(:pr_sweetness).permit(:sweetness)
    end
end
