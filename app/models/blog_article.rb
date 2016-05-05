class BlogArticle < ActiveRecord::Base

	resourcify

	validates :title, presence: true, length: { maximum: 250 }

	validates :description, presence: true, length: { minimum: 10 }

	belongs_to :user, class_name: User
end
