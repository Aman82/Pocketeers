class Review < ActiveRecord::Base
  belongs_to :curriculum
  belongs_to :user
end
