require "pry"
class RegistrantsController < ApplicationController
  def index
     @registrants = Registrant.all
  end

  def create
    # binding.pry
    @registrant = Registrant.new(registrant_params)
    if @registrant.save
        redirect_to Registrant, alert: "User created successfully."
    end
  end
  
  def registrant_params
    params.require(:registrant).permit(:name, :email)
  end

  def new
    @registrant = Registrant.new
  end

  def show
    @registrants = Registrant.all
    
  end

  def destroy
  end
end
