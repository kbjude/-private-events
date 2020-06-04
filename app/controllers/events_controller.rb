class EventsController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end
    params.require(:event).permit(:name, :description, :date, :user_id)
end
