class InspectionsController < ApplicationController
    before_action :set_inspection, only: [:show, :edit, :update]

    def index
        @inspections = []
        if current_client
            @inspections = current_client.inspections
        elsif current_inspector
            @inspections = current_inspector.inspections
        end
    end

    def show
        @inspection = Inspection.find_by(id: params[:id])
        if current_client && current_client.id == @inspection.client_id
            render :show
        elsif current_inspector && current_inspector.id == @inspection.inspector_id
            render :show
        else
            redirect_to '/'
        end
    end

    def bydate
        if params[:inspection_date]
            @inspections = Inspection.bydate(params[:inspection_date])
        else
            @inspections = Inspection.all
        end
    end

    def new
        if current_client
            render :new
        else
            redirect_to '/', alert: "You must be logged in as a client."
        end
    end

    def create
        @inspection = Inspection.new(inspection_params)
        @inspection.client_id = current_client.id
        if @inspection.save
            redirect_to client_inspection_path(@inspection)
        else 
            render :new
        end
    end

    def edit
        if current_inspector.id == @inspection.inspector_id
            :edit
        else
            redirect_to '/', alert: "Must be logged in as the inspector assigned to the inspection."
        end
    end

    def update
        
        if @inspection.update(inspection_params)
            @inspection.complete_inspection
            redirect_to inspector_inspection_path(current_inspector, @inspection)
        else
            redirect_to edit_inspector_inspection_path(current_inspector), alert: "Something went wrong. Please try again."
        end
    end

    private

    def inspection_params
        params.require(:inspection).permit(
            :address,
            :inspection_date,
            :comments,
            :completed,
            :structural_systems,
            :exterior,
            :roof_systems,
            :plumbing_system,
            :electrical_system,
            :heating_system,
            :ac_system,
            :interior,
            :insulation_ventilation,
            :fireplaces,
            :attics,
            :client_id,
            :inspector_id
        )
    end

    def set_inspection
        @inspection = Inspection.find_by(id: params[:id])
    end
    
end
