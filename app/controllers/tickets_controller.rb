class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update destroy]
  before_action :set_tickets, only: %i[index show create update edit]
  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
    @events = Event.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket.sku = "#{@ticket.event_id}00#{@ticket.id}"
    @ticket = Ticket.new(ticket_params)
    # @event = @ticket.event_id

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      # Ticket.where(event_id: @event, sold: false)
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      elsif @tickets.update_all(price_cents: @ticket.price_cents)
        format.html { redirect_to @ticket, notice: 'Tickets were successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }

      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
    # @price = price
    # @ticket_price = @ticket.price_cents
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  # Select all Tickets from event where {sold: = false}
  def set_tickets
    event_id = params[:event_id]
    @event = Event.where(id: event_id).first
    @tickets = Ticket.where(event_id: @event, sold: false)
    # @ticket = Ticket.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ticket_params
    params.require(:ticket).permit(:sku, :event_id, :price)
  end
end
