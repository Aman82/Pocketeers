class Curriculum < ActiveRecord::Base
  belongs_to :user
  has_many :groups
  has_many :reviews
end
