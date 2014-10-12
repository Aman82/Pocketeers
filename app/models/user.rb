require 'bcrypt'
class User < ActiveRecord::Base

  attr_accessor :email_confirmation     # uses default getter/setter

  has_secure_password

  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :curriculums
  has_many :reviews
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # REGULAR VALIDATOR
  validates_presence_of :first_name, :last_name, :email, :email_confirmation

  # EMAIL VALIDATOR
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  # PASSWORD VALIDATORS
  validates_length_of :password, :minimum => 5

  # CONFIRMATION VALIDATORS (e.g. checks if :email and :email_confirmation fields are equal)
  validates_confirmation_of :email

  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

  def full_name
    self.first_name + " " + self.last_name
  end
end

