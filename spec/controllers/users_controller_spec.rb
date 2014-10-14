require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "returns a collection of users" do
      get :index
      @users = assigns(:users)
      expect(@users).to match_array(User.all)
    end
    it "any of  the users in a collection should be a User" do
      get :index
      @users = assigns(:users)
      expect(@users.sample).to be_a(User)
    end
  end

  describe "GET show" do
    it "should return a User" do
      get :show, id:1      # User.all.first  User.first.id
      @user = assigns(:user)
      expect(@user).to be_a(User)
    end
    it "raises an error if User with an id is 0 or doesnot exist" do
    expect {get :show, id: 0}.to raise_error
    end
  end

end
