class RemoveCareFromHospitals < ActiveRecord::Migration[5.0]
  def change
    remove_column :hospitals, :care, :string
  end
end
