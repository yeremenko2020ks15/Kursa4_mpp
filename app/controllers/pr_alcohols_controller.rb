class PrAlcoholsController < ApplicationController
  before_action :set_pr_alcohol, only: %i[ show edit update destroy ]

  # GET /pr_alcohols or /pr_alcohols.json
  def index
    @pr_alcohols = PrAlcohol.all
  end

  # GET /pr_alcohols/1 or /pr_alcohols/1.json
  def show
  end

  # GET /pr_alcohols/new
  def new
    @pr_alcohol = PrAlcohol.new
  end

  # GET /pr_alcohols/1/edit
  def edit
  end

  # POST /pr_alcohols or /pr_alcohols.json
  def create
    @pr_alcohol = PrAlcohol.new(pr_alcohol_params)

    respond_to do |format|
      if @pr_alcohol.save
        format.html { redirect_to pr_alcohol_url(@pr_alcohol), notice: "Pr alcohol was successfully created." }
        format.json { render :show, status: :created, location: @pr_alcohol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_alcohols/1 or /pr_alcohols/1.json
  def update
    respond_to do |format|
      if @pr_alcohol.update(pr_alcohol_params)
        format.html { redirect_to pr_alcohol_url(@pr_alcohol), notice: "Pr alcohol was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_alcohol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_alcohol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_alcohols/1 or /pr_alcohols/1.json
  def destroy
    @pr_alcohol.destroy

    respond_to do |format|
      format.html { redirect_to pr_alcohols_url, notice: "Pr alcohol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_alcohol
      @pr_alcohol = PrAlcohol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_alcohol_params
      params.require(:pr_alcohol).permit(:alcohol)
    end
end
