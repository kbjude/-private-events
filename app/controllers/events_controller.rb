class EventsController < ApplicationController
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
    params.require(:event).permit(:name, :description, :date, :user_id)
end
