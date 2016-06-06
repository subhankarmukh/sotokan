class BlogArticle < ActiveRecord::Base

	resourcify

	mount_uploader :image, ImageUploader

  # Validations
    validates :title, :description, presence: true
	validates :title,               length: { maximum: 250 }
	validates :description,         length: { minimum: 10 }

  # Associations
	belongs_to :user, class_name: User
	has_many :comments, as: :commentable
end
