class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @events = Event.all
    # code
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:id])
    if @event.save
      redirect_to @event
    else
      render "new"
    end
  end

  private

  def set_event_id
    @event = Event.find(params[:id])
  end
end
