class BodyDataController < ApplicationController
  before_action :set_body_datum, only: %i[ show edit update destroy ]

  # GET /body_data or /body_data.json
  def index
    @body_data = BodyDatum.all
  end

  # GET /body_data/1 or /body_data/1.json
  def show
  end

  # GET /body_data/new
  def new
    @body_datum = BodyDatum.new
  end

  # GET /body_data/1/edit
  def edit
  end

  # POST /body_data or /body_data.json
  def create
    @body_datum = BodyDatum.new(body_datum_params)

    respond_to do |format|
      if @body_datum.save
        format.html { redirect_to @body_datum, notice: "Body datum was successfully created." }
        format.json { render :show, status: :created, location: @body_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @body_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_data/1 or /body_data/1.json
  def update
    respond_to do |format|
      if @body_datum.update(body_datum_params)
        format.html { redirect_to @body_datum, notice: "Body datum was successfully updated." }
        format.json { render :show, status: :ok, location: @body_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @body_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_data/1 or /body_data/1.json
  def destroy
    @body_datum.destroy
    respond_to do |format|
      format.html { redirect_to body_data_url, notice: "Body datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_datum
      @body_datum = BodyDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def body_datum_params
      params.require(:body_datum).permit(:weight, :fat, :date)
    end
end
