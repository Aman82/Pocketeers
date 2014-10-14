require 'rails_helper'

RSpec.describe CurriculumsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "returns a collection of curriculums" do
      get :index
      @curriculums = assigns(:curriculums)
      expect(@curriculums).to match_array(Curriculum.all)
    end
    it "any of  the curriculums in a collection should be a Curriculum" do
      get :index
      @curriculums = assigns(:curriculums)
      expect(@curriculums.sample).to be_a(Curriculum)
    end
  end

  describe "GET show" do
    it "should return a Curriculum" do
      get :show, id:1      # Curriculum.all.first  Curriculum.first.id
      @curriculum = assigns(:curriculum)
      expect(@curriculum).to be_a(Curriculum)
    end
    it "raises an error if Curriculum with an id is 0 or doesnot exist" do
    expect {get :show, id: 0}.to raise_error
    end
  end

end
