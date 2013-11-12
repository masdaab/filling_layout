require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "RoR Sample App (Filling Layout)" }
  subject {page}
  describe "Home page" do
    before {visit root_path}
    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}
    it {should have_title('| Home')}
  end

  describe "Help page" do
    before { visit help_path}
    it {should have_content('Help')}
    it {have_title(full_title(''))}
    it {have_title("| Help")}

  end

  describe "About page" do
    before { visit about_path}
    it {should have_content('About Us')}
    it {should have_title(full_title(''))}
    it {should have_title('| About Us')}
  end

  describe "Contact Page" do
    before {visit contact_path}
    it {should have_content('Contact')}
    it {should have_title(full_title(''))}
    it {should have_title('| Contact')}
  end
end