class TrackTimesController < ApplicationController

    def create 
        @tracktime = TrackTime.create(tracktime_params)
        redirect_to  driver_path(@driver)
    end



    private 

    def tracktime_params
        params.require(:tracktime).permit(:driver_id, :track_id, :laptime)
    end
end
