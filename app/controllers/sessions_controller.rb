class SessionsController < ApplicationController


    def new 

    end

    def create
       
        @driver = Driver.find_by(name: params[:name])
        if @driver && @driver.authenticate(params[:password])
            session[:driver_id] = @driver.id 
           
            redirect_to driver_path(@driver)
        else
            
            render :new
        end
    end


    def destroy
        session.clear
        redirect_to root_path
    end

  



end
