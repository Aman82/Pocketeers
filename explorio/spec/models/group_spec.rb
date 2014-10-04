require 'rails_helper'

RSpec.describe Group, :type => :model do

  it "it should have all fields" do
  	user = build(:user, first_name = nil)
  	expect(user).to be_invalid
  end

  
end