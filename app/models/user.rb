class User < ActiveRecord::Base

  # Initialize Rolify
  rolify

  # Associations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blog_articles
  has_many :comments, as: :commentable


  # Callbacks
  after_create :add_user_role_in_registration

  private
    def add_user_role_in_registration
        self.add_role 'user'
    end

end
