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
    end

    def new
    end

    def create
        @inspection = Inspection.new(inspection_params)
        @inspection.client_id = current_client.id
        if @inspection.save
            redirect_to client_inspection_path(current_client, @inspection)
        else 
            render :new
        end
    end

    def edit
    end

    def update
        @inspection.update(inspection_params)
        if @inspection.save
            redirect_to inspector_inspection_path(current_inspector, @inspection)
        else
            redirect_to edit_inspector_inspection_path(current_inspector)
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
