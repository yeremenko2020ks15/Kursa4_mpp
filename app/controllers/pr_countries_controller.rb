class PrCountriesController < ApplicationController
  before_action :set_pr_country, only: %i[ show edit update destroy ]

  # GET /pr_countries or /pr_countries.json
  def index
    @pr_countries = PrCountry.all
  end

  # GET /pr_countries/1 or /pr_countries/1.json
  def show
  end

  # GET /pr_countries/new
  def new
    @pr_country = PrCountry.new
  end

  # GET /pr_countries/1/edit
  def edit
  end

  # POST /pr_countries or /pr_countries.json
  def create
    @pr_country = PrCountry.new(pr_country_params)

    respond_to do |format|
      if @pr_country.save
        format.html { redirect_to pr_country_url(@pr_country), notice: "Pr country was successfully created." }
        format.json { render :show, status: :created, location: @pr_country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_countries/1 or /pr_countries/1.json
  def update
    respond_to do |format|
      if @pr_country.update(pr_country_params)
        format.html { redirect_to pr_country_url(@pr_country), notice: "Pr country was successfully updated." }
        format.json { render :show, status: :ok, location: @pr_country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_countries/1 or /pr_countries/1.json
  def destroy
    @pr_country.destroy

    respond_to do |format|
      format.html { redirect_to pr_countries_url, notice: "Pr country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr_country
      @pr_country = PrCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_country_params
      params.require(:pr_country).permit(:country)
    end
end
