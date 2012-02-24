require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'How it Works') }
    it { should have_selector 'title', :text => full_title('Home') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Me') }
    it { should have_selector 'title', :text => full_title('About Me') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector 'title', :text => full_title('Contact') }
  end

  describe "Rankings page" do
    before { visit rankings_path }

    it { should have_selector('h1', text: 'User Rankings') }
    it { should have_selector 'title', :text => full_title('Rankings') }
  end

  describe "Standings page" do
    before { visit standings_path }

    it { should have_selector('h1', text: 'Current Masters Standings') }
    it { should have_selector 'title', :text => full_title('Standings') }
  end
end
