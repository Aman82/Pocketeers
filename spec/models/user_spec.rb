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


  it "should have username, email, or password" do
    user = User.new(username: "Alex")
    expect(user).to be_invalid
    user = User.new(email: "alex@gmail.com")
    expect(user).to be_invalid
  end

  it "can have email" do
    user = User.new(email: true)
    expect(user.email?).to be(true)
  end
    it "can have email_confirmation" do
    user = User.new(email_confirmation: false)
    expect(user.email_confirmation?).to be(false)
  end
end