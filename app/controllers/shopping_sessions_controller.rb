class ShoppingSessionsController < ApplicationController
  before_action :set_shopping_session, only: %i[ show edit update destroy ]

  # GET /shopping_sessions or /shopping_sessions.json
  def index
    @shopping_sessions = ShoppingSession.all
  end

  # GET /shopping_sessions/1 or /shopping_sessions/1.json
  def show
  end

  # GET /shopping_sessions/new
  def new
    @shopping_session = ShoppingSession.new
  end

  # GET /shopping_sessions/1/edit
  def edit
  end

  # POST /shopping_sessions or /shopping_sessions.json
  def create
    @shopping_session = ShoppingSession.new(shopping_session_params)

    respond_to do |format|
      if @shopping_session.save
        format.html { redirect_to shopping_session_url(@shopping_session), notice: "Shopping session was successfully created." }
        format.json { render :show, status: :created, location: @shopping_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopping_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_sessions/1 or /shopping_sessions/1.json
  def update
    respond_to do |format|
      if @shopping_session.update(shopping_session_params)
        format.html { redirect_to shopping_session_url(@shopping_session), notice: "Shopping session was successfully updated." }
        format.json { render :show, status: :ok, location: @shopping_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopping_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_sessions/1 or /shopping_sessions/1.json
  def destroy
    @shopping_session.destroy

    respond_to do |format|
      format.html { redirect_to shopping_sessions_url, notice: "Shopping session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_session
      @shopping_session = ShoppingSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopping_session_params
      params.require(:shopping_session).permit(:user_id, :total)
    end
end
