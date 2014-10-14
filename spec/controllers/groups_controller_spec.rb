require 'rails_helper'

RSpec.describe GroupsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "returns a collection of groups" do
      get :index
      @groups = assigns(:groups)
      expect(@groups).to match_array(Group.all)
    end
    it "any of  the groups in a collection should be a Group" do
      get :index
      @groups = assigns(:groups)
      expect(@groups.sample).to be_a(Group)
    end
  end

  describe "GET show" do
    it "should return a Group" do
      get :show, id:1      # Group.all.first  Group.first.id
      @group = assigns(:group)
      expect(@group).to be_a(Group)
    end
    it "raises an error if Group with an id is 0 or doesnot exist" do
    expect {get :show, id: 0}.to raise_error
    end
  end
end
