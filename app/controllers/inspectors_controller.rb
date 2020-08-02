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
    
    def bio
        @inspector = Inspector.find_by(id: params[:id])
        if current_inspector == @inspector
            render :bio
        else
            redirect_to '/', alert: "You don't have access to that page."
        end
    end

    def edit_bio
        @inspector = current_inspector
        @inspector.bio = params[:inspector][:bio]
        @inspector.save
        redirect_to inspector_path(@inspector)
    end
end