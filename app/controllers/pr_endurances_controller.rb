class PrEndurancesController < ApplicationController
  before_action :set_pr_endurance, only: %i[ show edit update destroy ]

  # GET /pr_endurances or /pr_endurances.json
  def index
    @pr_endurances = PrEndurance.all
  end

  # GET /pr_endurances/1 or /pr_endurances/1.json
  def show
  end

  # GET /pr_endurances/new
  def new
    @pr_endurance = PrEndurance.new
  end

  # GET /pr_endurances/1/edit
  def edit
  end

  # POST /pr_endurances or /pr_endurances.json
  def create
    @pr_endurance = PrEndurance.new(pr_endurance_params)

    respond_to do |format|
      if @pr_endurance.save
        format.html { redirect_to pr_endurance_url(@pr_endurance), notice: "Pr endurance was successfully created." }
        format.json { render :show, status: :created, location: @pr_endurance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_endurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_endurances/1 or /pr_endurances/1.json
  def update
    respond_to do |format|
      if @pr_endurance.update(pr_endurance_params)
        format.html { redirect_to pr_endurance_url(@pr_endurance), notice: "Pr endurance was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_endurance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_endurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_endurances/1 or /pr_endurances/1.json
  def destroy
    @pr_endurance.destroy

    respond_to do |format|
      format.html { redirect_to pr_endurances_url, notice: "Pr endurance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_endurance
      @pr_endurance = PrEndurance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_endurance_params
      params.require(:pr_endurance).permit(:endurance)
    end
end
