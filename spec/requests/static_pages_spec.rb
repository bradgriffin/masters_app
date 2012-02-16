require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Masters Challenge'" do
      visit '/static_pages/home'
      page.should have_content('Masters Challenge')
    end

    it "should have the right title" do
    visit '/static_pages/home'
    page.should have_selector('title',
                    :text => "Masters Challenge | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
    visit '/static_pages/help'
    page.should have_selector('title',
                    :text => "Masters Challenge | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      page.should have_content('About Me')
    end

    it "should have the right title" do
    visit '/static_pages/about'
    page.should have_selector('title',
                    :text => "Masters Challenge | About Me")
    end
  end
end
