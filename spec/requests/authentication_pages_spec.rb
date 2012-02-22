require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit new_user_session_path }

    it { should have_selector('h1',    text: 'Sign in') }
    it { should have_selector('title', text: 'Sign in') }
  end

  describe "signin" do
    before { visit new_user_session_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.flash.alert', text: 'Invalid') }
    end

    describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.flash.error') }
    end
  end
end