require 'spec_helper'

describe "ArticlesPages" do
  subject { page }

  describe "not signed in" do

    let(:article) { FactoryGirl.create(:article) }
    before { visit root_path }
    
    it { should have_selector('h1', text: 'Articles') }
    it { should have_selector('title', text: 'Articles') }
    it { should have_link("Sign in with Twitter", text: root_url + '/auth/twitter') }

    # not work. I do not know how to operate DOM emelents in html.
    # describe "pagination" do
      
    #   before(:all) { 30.times { FactoryGirl.create(:article) } }
    #   after(:all) { Article.delete_all }

    #   it "should list each article" do
    #     Article.paginate(page: 1).each do |article|
    #       page.should have_content(article.content)
    #     end
    #   end
    # end
  end
end
