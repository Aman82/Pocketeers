require 'bcrypt'
class User < ActiveRecord::Base
  
  has_many :user_groups
  has_many :groups, through: :user_groups

  has_many :curriculums
  has_many :reviews

  attr :password                        # password getter/setter defined below
  attr_accessor :email_confirmation     # uses default getter/setter
  attr_accessor :password_confirmation
  
  # REGULAR VALIDATOR
  validates_presence_of :name, :email_confirmation, :password_confirmation

  # EMAIL VALIDATOR
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  # PASSWORD VALIDATORS
  validates_presence_of :password
  validates_length_of :password, :minimum => 5

  # CONFIRMATION VALIDATORS (e.g. checks if :email and :email_confirmation fields are equal)
  validates_confirmation_of :email
  validates_confirmation_of :password

 # password GETTER
  def password
    return self[:password]
  end

  # password SETTER 
  #   (now also updates the password virtual field)
  def password=(new_password)
    self[:password] = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

end

