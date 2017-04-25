class Hospital < ApplicationRecord
	mount_uploader :image, ImageUploader
end
