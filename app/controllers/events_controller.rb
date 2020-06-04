class EventsController < ApplicationController
    skip_before_action :login_required, :only => [:index]
    def index
        @events = Event.all
    end

    def new
        @event = current_user.events.build
    end

    def create
        @event = current_user.events.build(events_params)

    end

    def show
        @event = Event.find(params[:id])
    end

    private

    def events_params
        params.require(:event).permit(:name, :description, :date, :user_id)
    end
end
