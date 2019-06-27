class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :event_params, only: [:create]
  before_action :set_event_id, except: %i[ new ]

  def index
    @events = Event.all
    # code
  end

  def show; end

  def new
    @event = Event.new(params[:id])
  end

  def create
    @event = Event.new(params[:id])
    @event.user_id = current_user
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
  def event_params
    params.require(:event).permit(:id, :title,
                                  :description,
                                  :main_img,
                                  :tickets,
                                  :user_id
                                )
  end
end
