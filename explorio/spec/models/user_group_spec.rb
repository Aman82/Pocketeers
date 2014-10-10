require 'rails_helper'

RSpec.describe UserGroup, :type => :model do

  it "should belongs to users" do
    user = build(:user, first_name = nil)
    expect(user).to be_invalid
  end

  it "should belongs to group" do
    user = build(:user, first_name = nil)
    expect(user).to be_invalid
  end


end