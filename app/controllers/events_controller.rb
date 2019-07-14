class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy create_tickets]
  before_action :event_params, only: %i[create]
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @ticket = Ticket.where(event_id: @event.id, sold: false)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    # @tickets = Ticket.where(event_id: @event.id, sold: false)
    # @tickets = Ticket.where(event_id: params[:event_id])
    # @price = @event.tickets(:price)

    # event_tickets = @event.event_tickets
    # @event.event_tickets.times do
    #   Ticket.create(event_id: @event, sold: false)
    # end
    if @event.save
    redirect_to new_event_ticket_path(@ticket, event_id: @event), notice: 'Event was successfully created.'
    # respond_to do |format|
        # format.html {
        # format.json { render :show, status: :created, location: @event }
      else
           render :new
           render json: @event.errors
           # format.html {
        # format.json {
          # , status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:title, :description, :begin, :end, :event_tickets, :user_id)
  end
end
