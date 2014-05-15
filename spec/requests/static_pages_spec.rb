require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("RoR Tut SA")
    end
  end
    describe "Help page" do

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end
  describe "About page" do

      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_title("About Us")
      end
    end
  describe "Contact page" do

      it "should have the content that looks like 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_content('Contact')
      end
      it "should have the title 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_title("Contact")
      end
    end
end