class EmasController < ApplicationController
  before_action :set_ema, only: %i[ show edit update destroy ]

  # GET /emas or /emas.json
  def index
    @emas = Ema.all
  end

  # GET /emas/1 or /emas/1.json
  def show
  end

  # GET /emas/new
  def new
    @ema = Ema.new
  end

  # GET /emas/1/edit
  def edit
  end

  # POST /emas or /emas.json
  def create
    @ema = Ema.new(ema_params)

    respond_to do |format|
      if @ema.save
        format.html { redirect_to emas_path, notice: "良い一年のスタートです!! " }
        format.json { render :show, status: :created, location: @ema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emas/1 or /emas/1.json
  def update
    respond_to do |format|
      if @ema.update(ema_params)
        format.html { redirect_to ema_url(@ema), notice: "Ema was successfully updated." }
        format.json { render :show, status: :ok, location: @ema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emas/1 or /emas/1.json
  def destroy
    @ema.destroy

    respond_to do |format|
      format.html { redirect_to emas_url, notice: "Ema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ema
      @ema = Ema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ema_params
      params.require(:ema).permit(:name, :body)
    end
end
