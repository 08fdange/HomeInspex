class AddBioToInspectors < ActiveRecord::Migration[6.0]
  def change
    add_column :inspectors, :bio, :string
  end
end
