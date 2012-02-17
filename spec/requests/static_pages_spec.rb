require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Masters Challenge'" do
      visit root_path
      page.should have_content('Masters Challenge')
    end

    it "should have the right title" do
    visit root_path
    page.should have_selector('title',
                    :text => "Masters Challenge | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the right title" do
    visit help_path
    page.should have_selector('title',
                    :text => "Masters Challenge | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Me'" do
      visit about_path
      page.should have_content('About Me')
    end

    it "should have the right title" do
    visit about_path
    page.should have_selector('title',
                    :text => "Masters Challenge | About Me")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Masters Challenge | Contact")
    end
  end
end
