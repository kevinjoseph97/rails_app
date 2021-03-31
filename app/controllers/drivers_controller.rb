class DriversController < ApplicationController

    
    def index
        @drivers = Driver.all 
    end
    

    def new 
        @driver = Driver.new
    end


    def create 
        @driver = Driver.create(driver_params)
        redirect_to driver_path(@driver)
    end
    

    def show 
        find_driver
    end


    def edit 
        find_driver
    end

    def update 
        find_driver
        @driver.update(driver_params)
        redirect_to driver_path(@driver)
    end

  




    private

    def driver_params
        params.require(:driver).permit(:name, :password, :car)
    end

    def find_driver
        @driver = Driver.find(params[:id])
        
    end
end
