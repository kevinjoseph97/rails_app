class TracksController < ApplicationController

   
   def index
   end
   
    def new 
        @track = Track.new
    end

    def create 
        @track = Track.create(track_params)
        # binding.pry
        redirect_to track_path(@track)
    end

    def show
        @track = Track.find(params[:id])
    end

    def edit 
        @track = Track.find(params[:id])
    end

    def update 
        @track = Track.find(params[:id])
        @track.update(track_params)
        redirect_to track_path(@track)
    end


    def destroy
        @track = Track.find(params[:id])
        @track.delete
        render :index
    end


    private 

    def track_params
        params.require(:track).permit(:name, :location)
    end
end
