require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.has_title?("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should have_no_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.has_content?('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.has_title?("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      page.has_content?('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.has_title?("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
     it "should have the content 'Contact'" do
       visit '/static_pages/contact'
       page.has_content?("Contact")
     end
      it "should have the title 'Contact'" do
       visit '/static_pages/contact'
       page.has_title?("#{base_title} | Contact")
     end
  end
end