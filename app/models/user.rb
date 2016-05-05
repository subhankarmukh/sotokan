class User < ActiveRecord::Base

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blog_articles

  # enum role: [:user, :vip, :admin]
  # after_initialize :set_default_role, :if => :new_record?
  
  

  # def set_default_role
  #   self.role ||= :user
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  
  before_create :add_user_role

  def role?(role)
    roles.include? role.to_s
  end

  private
    def add_user_role
      self.add_role :user
    end

end
