class InspectionsController < ApplicationController

    def index
        @inspections = []
        if current_client
            @inspections = current_client.inspections
        elsif current_inspector
            @inspections = current_inspector.inspections
        end
    end

    def show
    end

    def new
    end

    def create
    end
    
end
