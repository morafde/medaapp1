class Hospital < ApplicationRecord
	mount_uploader :image, ImageUploader

	searchkick

	has_many :reviews

	
	require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      hospital_hash = row.to_hash # exclude the price field
      hospital = Hospital.where(id: hospital_hash["id"])

      if hospital.count == 1
        hospital.first.update_attributes(hospital_hash)
      else
        Hospital.create!(hospital_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end # end class

	#validates :name, :address, :phone, :image, presence: true
	#validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  	#message: "must start with http:// or https://" }
	#validates :phone, numericality: {
    #only_integer: true,
    #message: "must be land line(7 digits) or Gsm(11 digits)"
	#}