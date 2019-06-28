class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :event_params, only: [:create]
  before_action :set_event_id, except: %i[ index new create]
  def index
    @events = Event.all
    # code
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @tickets = @event.tickets
    @tickets.to_i

    #
    if @event.save
      @event.user_id = current_user
      redirect_to @event
    else
      render :new
    end
  end

  private

  def set_event_id
    @event = Event.find(params[:event])
  end

  def event_params
    params.require(:event).permit(:title,:description, :main_img, :tickets, :user_id)
  end
end
