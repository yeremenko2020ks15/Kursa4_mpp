class PrVolumesController < ApplicationController
  before_action :set_pr_volume, only: %i[ show edit update destroy ]

  # GET /pr_volumes or /pr_volumes.json
  def index
    @pr_volumes = PrVolume.all
  end

  # GET /pr_volumes/1 or /pr_volumes/1.json
  def show
  end

  # GET /pr_volumes/new
  def new
    @pr_volume = PrVolume.new
  end

  # GET /pr_volumes/1/edit
  def edit
  end

  # POST /pr_volumes or /pr_volumes.json
  def create
    @pr_volume = PrVolume.new(pr_volume_params)

    respond_to do |format|
      if @pr_volume.save
        format.html { redirect_to pr_volume_url(@pr_volume), notice: "Pr volume was successfully created." }
        format.json { render :show, status: :created, location: @pr_volume }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_volumes/1 or /pr_volumes/1.json
  def update
    respond_to do |format|
      if @pr_volume.update(pr_volume_params)
        format.html { redirect_to pr_volume_url(@pr_volume), notice: "Pr volume was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_volume }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_volumes/1 or /pr_volumes/1.json
  def destroy
    @pr_volume.destroy

    respond_to do |format|
      format.html { redirect_to pr_volumes_url, notice: "Pr volume was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_volume
      @pr_volume = PrVolume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_volume_params
      params.require(:pr_volume).permit(:volume)
    end
end
