class User < ActiveRecord::Base
  
  has_many :user_groups
  has_many :groups, through: :user_groups

  has_many :curriculums
  has_many :reviews
end
