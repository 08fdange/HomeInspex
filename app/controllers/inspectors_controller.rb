class InspectorsController < ApplicationController

    def show
    end

    def inspectors
        @inspectors = Inspector.all
    end
    
end