class PrClassificationsController < ApplicationController
  before_action :set_pr_classification, only: %i[ show edit update destroy ]

  # GET /pr_classifications or /pr_classifications.json
  def index
    @pr_classifications = PrClassification.all
  end

  # GET /pr_classifications/1 or /pr_classifications/1.json
  def show
  end

  # GET /pr_classifications/new
  def new
    @pr_classification = PrClassification.new
  end

  # GET /pr_classifications/1/edit
  def edit
  end

  # POST /pr_classifications or /pr_classifications.json
  def create
    @pr_classification = PrClassification.new(pr_classification_params)

    respond_to do |format|
      if @pr_classification.save
        format.html { redirect_to pr_classification_url(@pr_classification), notice: "Pr classification was successfully created." }
        format.json { render :show, status: :created, location: @pr_classification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_classifications/1 or /pr_classifications/1.json
  def update
    respond_to do |format|
      if @pr_classification.update(pr_classification_params)
        format.html { redirect_to pr_classification_url(@pr_classification), notice: "Pr classification was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_classification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_classifications/1 or /pr_classifications/1.json
  def destroy
    @pr_classification.destroy

    respond_to do |format|
      format.html { redirect_to pr_classifications_url, notice: "Pr classification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_classification
      @pr_classification = PrClassification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_classification_params
      params.require(:pr_classification).permit(:classification)
    end
end
