class EventsController < ApplicationController
  before_action :login_required, only: %i[new create]
  def show
    @event = Event.find_by_id(params[:id])
    @owner = Event.creator(@event)
  end

  def index
    @events = Event.all
    @past_event = @events.past_date
    @upcoming_event = @events.upcoming_date
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(events_params)
    if @event.save
      flash.now[:notice] = 'Save successfully'
      redirect_to user_path(current_user.id)
    else
      redirect_to new_events_path
    end
  end

  private

  def events_params
    params.require(:event).permit(:name, :description, :date)
  end
end
