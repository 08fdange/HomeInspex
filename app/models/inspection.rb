class Inspection < ApplicationRecord
    belongs_to :inspector
    belongs_to :client
end
