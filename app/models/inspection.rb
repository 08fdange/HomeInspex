class Inspection < ApplicationRecord
    belongs_to :inspector
    belongs_to :client

    def complete_inspection
        if self.structural_systems == true &&
            self.exterior == true &&
            self.roof_systems == true &&
            self.plumbing_system == true &&
            self.electrical_system == true &&
            self.heating_system == true &&
            self.ac_system == true &&
            self.interior == true &&
            self.insulation_ventilation == true &&
            self.fireplaces == true &&
            self.attics == true
        then
            self.completed = true
            self.save
        end
    end

    def inspection_status
        if self.completed
            "Completed"
        else
            "Incomplete"
        end
    end

        
end
