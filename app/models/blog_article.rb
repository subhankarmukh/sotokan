class BlogArticle < ActiveRecord::Base

	belongs_to :user

	validates :title, presence: true, length: { maximum: 250 }

	validates :description, presence: true, length: { minimum: 10 }

end
