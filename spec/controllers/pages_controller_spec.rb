require 'spec_helper'

describe PagesController do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end

  end


  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
      it "should have the right title" do
      visit '/pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")
    end
  end

   describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
      it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title',
                        :text => "#{base_title} | About")
    end
  end

     describe "GET 'services'" do
    it "returns http success" do
      get 'services'
      response.should be_success
    end
      it "should have the right title" do
      visit '/pages/services'
      page.should have_selector('title',
                        :text => "#{base_title} | Services")
    end
  end

end
