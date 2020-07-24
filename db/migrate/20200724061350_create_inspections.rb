class CreateInspections < ActiveRecord::Migration[6.0]
  def change
    create_table :inspections do |t|
      t.string :address
      t.date :inspection_date
      t.text :comments
      t.boolean :completed, default: false
      t.boolean :structural_systems, default: false
      t.boolean :exterior, default: false
      t.boolean :roof_systems, default: false
      t.boolean :plumbing_system, default: false
      t.boolean :electrical_system, default: false
      t.boolean :heating_system, default: false
      t.boolean :ac_system, default: false
      t.boolean :interior, default: false
      t.boolean :insulation_ventilation, default: false
      t.boolean :fireplaces, default: false
      t.boolean :attics, default: false
      t.integer :client_id
      t.integer :inspector_id
      t.timestamps
    end
  end
end
