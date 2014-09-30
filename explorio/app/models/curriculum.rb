class Curriculum < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :reviews
end
