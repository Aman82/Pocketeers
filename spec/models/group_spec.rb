require 'rails_helper'

RSpec.describe Group, :type => :model do

  it "should have name, topic, or loaction" do
  	group = Group.new(name: "lol")
  	expect(group).to be_valid
  end

  it "should have name, topic, or loaction" do
    group = Group.new(topic: "HTML5")
    expect(user).to be_valid
    group = Group.new(topic: "RailsOnRuby")
    expect(user).to be_invalid
  end

  it "should have location" do
    group = build(:user, first_name = nil)
    expect(user).to be_invalid
  end



end