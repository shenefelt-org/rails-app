class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params) # create with scrubbed params

    if @ticket.save
      redirect_to tickets_path, notice: "Created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end


  private

  def ticket_params
    params.require(:ticket).permit(:title, :priority, :status, :body)
  end
end
