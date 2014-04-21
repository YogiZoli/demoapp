require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  describe "Home page" do
    
    before do
      visit root_path
    end
    
    it { should have_content('Sample App') }
    it { should have_title(full_title('') }
    it { should_not have_title('| Home') }
    
#    it "should have the content 'Sample App'" do
#      expect(page).to have_content('Sample App')
#    end

#    it "should have the title" do
#      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#    end
  end

  describe "Help page" do

    before do
      visit help_path
    end
    
    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    before do
      visit about_path
    end
    
    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact page" do

    before do 
      visit contact_path
    end
    
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end