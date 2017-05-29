class Hospital < ApplicationRecord
	mount_uploader :image, ImageUploader

	searchkick

	has_many :reviews

	validates :name, :address, :phone, :image, presence: true
	#validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  	#message: "must start with http:// or https://" }
	#validates :phone, numericality: {
    #only_integer: true,
    #message: "must be land line(7 digits) or Gsm(11 digits)"
	#}
end
