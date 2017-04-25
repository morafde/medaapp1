class AddImageToHospitals < ActiveRecord::Migration[5.0]
  def change
    add_column :hospitals, :image, :string
  end
end
