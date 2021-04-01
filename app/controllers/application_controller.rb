class ApplicationController < ActionController::Base

    helper_method :authorize, :current_driver, :racemaster


    def home 
    end

    #set this to admin 
    def show_time

    end

    def authorize
        redirect_to '/signin' unless current_driver
    end

    #set up current driver 
    def current_driver 
        @driver ||= Driver.find(session[:driver_id]) if session[:driver_id]
        
    end

    def racemaster
        current_driver.racemaster
    end





end
