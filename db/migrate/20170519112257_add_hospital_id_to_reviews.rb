class AddHospitalIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :hospital_id, :integer
  end
end
