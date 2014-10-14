require 'rails_helper'

RSpec.describe User, :type => :model do

  
  it "should have username" do
    user = build(:user, first_name = nil)
    expect(user).to be_invalid
  end  

  it "should have first_name" do
    user = build(:user, first_name = nil)
    expect(user).to be_invalid
  end  

  it "should have last_name" do
  	user = build(:user, first_name = nil)
  	expect(user).to be_invalid
  end


end