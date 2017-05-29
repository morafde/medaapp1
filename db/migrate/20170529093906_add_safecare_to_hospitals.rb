class AddSafecareToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :safe_care, :string
  end
end
