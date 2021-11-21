class Publication < ApplicationRecord
    belongs_to :user 
    validates :image, presence: true
    validates :content, presence: true
    mount_uploader :image, ImageUploader
end
