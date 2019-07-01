class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_event_id, only: [:show]
  before_action :to_i, only: [:create]

  def index
    @events = Event.all
    # code
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event.user_id = current_user
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render "new"
    end
  end

  private

  def to_i
    @tickets = Event(:tickets)
    @tickets.to_i
  end

  def set_event_id
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title,
                                  :description,
                                  :main_img,
                                  :tickets,
                                  :user_id)
  end
end
