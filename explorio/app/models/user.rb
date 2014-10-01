class User < ActiveRecord::Base
  has_and_belongs_to_many :groups
  has_many :curriculums
  has_many :reviews
end
