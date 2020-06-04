class EventsController < ApplicationController
    skip_before_action :login_required, :only => [:index]
    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        
    end

    def show
        @event = Event.find(params[:id])
    end

    private

    def events_params
        params.require(:event).permit(:name, :description, :date, :user_id)
    end
end
