class EventsController < ApplicationController
  before_filter :find_event, :only => [:show, :edit]

  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(events_params) 
    if @event.new_record?
      return render :action => :new
    end
    redirect_to @event #events_path(:id => @event.id)
  end

  def show
    respond_with @event
  end

  def edit
    respond_with @event
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def events_params
    params.require(:event).permit(:name, :stage, :longitude, :latitude, :address)
  end
end
