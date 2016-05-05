class BlogArticle < ActiveRecord::Base

	resourcify

  # Validations
  validates :title, :description, presence: true
	validates :title,               length: { maximum: 250 }
	validates :description,         length: { minimum: 10 }

  # Associations
	belongs_to :user, class_name: User
end
