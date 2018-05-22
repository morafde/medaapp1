class Hospital < ApplicationRecord

  validates_uniqueness_of :name
  has_many :reviews

  mount_uploader :image, ImageUploader

   searchkick

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Hospital.create! row.to_hash
    end
  end

  def avg_rating
    reviews.average(:rating).round(2)
  end

  def length
  	reviews.count(:rating)
  end	


	#validates :name, :address, :phone, presence: true
	#validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  	#message: "must start with http:// or https://" }
	#validates :phone, numericality: {
    #only_integer: true,
    #message: "must be land line(7 digits) or Gsm(11 digits)"
	#}

end