class AddFieldsToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :city_town, :string
    add_column :hospitals, :state, :string
    add_column :hospitals, :safe, :string
    add_column :hospitals, :care, :string
    add_column :hospitals, :jci, :string
    add_column :hospitals, :cohsasa, :string
    add_column :hospitals, :best_known_4, :string
  end
end
