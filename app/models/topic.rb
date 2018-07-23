class Topic < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    has_many :answers, dependent: :destroy
    belongs_to :user
    validates :photo, presence: true


end
