class OrdersController < ApplicationController
  before_action :set_ticket, except: %i[destroy]

  def create
    @order = Order.new(price: @ticket.price)
    @order.user = current_user
    @order.ticket = @ticket

    if @order.save
      @ticket.sold = true
      @ticket.save

      redirect_to user_path(current_user)
    else
      redirect_to ticket_path(@ticket)
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @ticket.sold = false
    @ticket.save

    @order.delete

    redirect_to user_path(current_user)
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end
end
