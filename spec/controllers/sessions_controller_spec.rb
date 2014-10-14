require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do


 describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign In!') }
    # it { should have_title('Sign in') }
  end
  
  it "should validate user"

  it "should generate a cookie yum yum"

  it "should destroy the coookie"

end
