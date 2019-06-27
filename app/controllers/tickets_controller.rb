class TicketsController < ApplicationController
 before_action :set_ticket
  def index
      @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

    if @ticket.save
      # raise

      redirect_to @ticket
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)

      @ticket.save

      redirect_to @ticket
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end

  # OTHER ACTIONS
  #
  # def user_tickets
  #   @tickets = Ticket.where("user_id = #{current_user.id}")
  # end
  #
  # def user_sales
  #   @tickets = Ticket.where("user_id = #{current_user.id}")
  # end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(
      :description,
      :main_img,
      :tickets,
      :sold,
      :user_id,
      :created_at,
      :updated_at
    )
  end
end
