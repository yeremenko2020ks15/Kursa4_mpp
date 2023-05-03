class PrColorsController < ApplicationController
  before_action :set_pr_color, only: %i[ show edit update destroy ]

  # GET /pr_colors or /pr_colors.json
  def index
    @pr_colors = PrColor.all
  end

  # GET /pr_colors/1 or /pr_colors/1.json
  def show
  end

  # GET /pr_colors/new
  def new
    @pr_color = PrColor.new
  end

  # GET /pr_colors/1/edit
  def edit
  end

  # POST /pr_colors or /pr_colors.json
  def create
    @pr_color = PrColor.new(pr_color_params)

    respond_to do |format|
      if @pr_color.save
        format.html { redirect_to pr_color_url(@pr_color), notice: "Pr color was successfully created." }
        format.json { render :show, status: :created, location: @pr_color }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_colors/1 or /pr_colors/1.json
  def update
    respond_to do |format|
      if @pr_color.update(pr_color_params)
        format.html { redirect_to pr_color_url(@pr_color), notice: "Pr color was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_color }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_colors/1 or /pr_colors/1.json
  def destroy
    @pr_color.destroy

    respond_to do |format|
      format.html { redirect_to pr_colors_url, notice: "Pr color was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_color
      @pr_color = PrColor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_color_params
      params.require(:pr_color).permit(:color)
    end
end
