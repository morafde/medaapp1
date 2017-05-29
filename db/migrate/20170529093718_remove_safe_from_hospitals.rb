class RemoveSafeFromHospitals < ActiveRecord::Migration[5.0]
  def change
    remove_column :hospitals, :safe, :string
  end
end
