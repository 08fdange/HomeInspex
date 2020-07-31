class InspectorsController < ApplicationController
    
    def show
        @inspector = Inspector.find_by(id: params[:id])
        if helpers.logged_in?
            render :show
        else
            redirect_to '/', alert: "You must be logged in to access that page."
        end
    end

    def index
        @inspectors = Inspector.all
        if helpers.logged_in?
            render :index
        else
            redirect_to '/', alert: "You must be logged in to access that page."
        end
    end
    
end