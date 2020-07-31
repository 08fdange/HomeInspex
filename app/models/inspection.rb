class Inspection < ApplicationRecord
    belongs_to :inspector
    belongs_to :client

    validates :address, presence: true
    validates :address, uniqueness: true
    validates :inspection_date, presence: true
    
    def tasks_complete
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
        tasks_complete = true
        else
            tasks_complete = false
        end
    end

    def complete_inspection
        if tasks_complete == true
            self.completed = true
        else
            self.completed = false
        end
        self.save
    end

    def inspection_status
        if self.completed == true
            "Completed"
        else
            "Incomplete" 
        end
    end
    
    def yes_or_no(object_attr)
        if object_attr == true
            "Yes"
        else
            "No"
        end
    end

end
