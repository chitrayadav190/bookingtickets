class TicketingsController < ApplicationController
  before_action :set_ticketing, only: %i[ show edit update destroy ]

  # GET /ticketings or /ticketings.json
  def index
    @ticketings = Ticketing.all
  end

  # GET /ticketings/1 or /ticketings/1.json
  def show
  end

  # GET /ticketings/new
  def new
    @ticketing = Ticketing.new
  end

  # GET /ticketings/1/edit
  def edit
  end

  # POST /ticketings or /ticketings.json
  def create
    @ticketing = Ticketing.new(ticketing_params)

    respond_to do |format|
      if @ticketing.save
        format.html { redirect_to @ticketing, notice: "Ticketing was successfully created." }
        format.json { render :show, status: :created, location: @ticketing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticketings/1 or /ticketings/1.json
  def update
    respond_to do |format|
      if @ticketing.update(ticketing_params)
        format.html { redirect_to @ticketing, notice: "Ticketing was successfully updated." }
        format.json { render :show, status: :ok, location: @ticketing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticketings/1 or /ticketings/1.json
  def destroy
    @ticketing.destroy
    respond_to do |format|
      format.html { redirect_to ticketings_url, notice: "Ticketing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticketing
      @ticketing = Ticketing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticketing_params
      params.require(:ticketing).permit(:system, :Trains, :from, :To, :Date, :Price, :Class)
    end
end
