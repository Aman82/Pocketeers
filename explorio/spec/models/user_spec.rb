require 'rails_helper'

RSpec.describe User, :type => :model do

  it "should have all fields except for phone number" do
  	user = build(:user, first_name = nil)
  	expect(user).to be_invalid
  end


end