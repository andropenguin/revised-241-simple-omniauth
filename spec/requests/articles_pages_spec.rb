require 'spec_helper'

describe "ArticlesPages" do
  subject { page }

  describe "not signed in" do

    let(:article) { FactoryGirl.create(:article) }
    before { visit root_path }
    
    it { should have_selector('h1', text: 'Articles') }
    it { should have_selector('title', text: 'Articles') }
    it { should have_link("Sign in with Twitter", text: 'http://localhost:3000/auth/twitter') }
  end
end
