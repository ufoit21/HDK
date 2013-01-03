class User < ActiveRecord::Base

    attr_accessible :email, :name, :password, :password_confirmation
    
    has_many :assigned_projects, dependent: :destroy
    has_many :projects, :through => :assigned_projects
    has_many :schedules, :through => :assigned_projects
    
    has_secure_password
    
    before_save { |user| user.email = email.downcase }
    validates :name,presence: true ,length:{maximum:30}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true

    validates :password,presence: true,length: {minimum: 4 }
    validates :password_confirmation,presence: true
    
    before_save :create_remember_token

    private
      def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
      end
end
