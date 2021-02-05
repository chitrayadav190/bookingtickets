class BookingticketsController < ApplicationController
  before_action :set_bookingticket, only: %i[ show edit update destroy ]

  # GET /bookingtickets or /bookingtickets.json
  def index
    @bookingtickets = Bookingticket.all
  end

  # GET /bookingtickets/1 or /bookingtickets/1.json
  def show
  end

  # GET /bookingtickets/new
  def new
    @bookingticket = Bookingticket.new
  end

  # GET /bookingtickets/1/edit
  def edit
  end

  # POST /bookingtickets or /bookingtickets.json
  def create
    @bookingticket = Bookingticket.new(bookingticket_params)

    respond_to do |format|
      if @bookingticket.save
        format.html { redirect_to @bookingticket, notice: "Bookingticket was successfully created." }
        format.json { render :show, status: :created, location: @bookingticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookingticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookingtickets/1 or /bookingtickets/1.json
  def update
    respond_to do |format|
      if @bookingticket.update(bookingticket_params)
        format.html { redirect_to @bookingticket, notice: "Bookingticket was successfully updated." }
        format.json { render :show, status: :ok, location: @bookingticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookingticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingtickets/1 or /bookingtickets/1.json
  def destroy
    @bookingticket.destroy
    respond_to do |format|
      format.html { redirect_to bookingtickets_url, notice: "Bookingticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookingticket
      @bookingticket = Bookingticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookingticket_params
      params.require(:bookingticket).permit(:event_name, :location, :Date, :Price)
    end
end
