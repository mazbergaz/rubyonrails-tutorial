require 'spec_helper'

describe "Static pages" do
	
	base_title = 'Ruby on Rails Tutorial Sample App'
	
  describe "Home page" do

    before { visit root_path }
  	
  	it "should have the content 'Sample App'" do
      page.should have_content('Sample App')
    end
    
    it "should have base title" do
    	page.should have_selector('title', text: base_title)
    end
    
  end
  
  describe "Help page" do

    before { visit help_path }
  	
  	it "should have the content 'Help Page'" do
  		page.should have_content('Help Page')
  	end
    
    it "should have base title" do
    	page.should have_selector('title', text: base_title)
    end
    
  end
  
  describe "About Page" do 
  	
    before { visit about_path }

  	it "should have the content 'About Us'" do
  		page.should have_content('About Us')
  	end
    
    it "should have base title" do
    	page.should have_selector('title', text: base_title)
    end
    
  end
  
  describe "Contact Page" do 

    before { visit contact_path }
  	
  	it "should have the content 'Contact Us'" do
  		page.should have_content('Contact Us')
  	end
    
    it "should have base title" do
    	page.should have_selector('title', text: base_title)
    end
    
  end

=begin
  def test(locationPath, content)
    before { visit locationPath }
    
    it "should have the content '#{content}'" do
      page.should have_content(content)
    end
    
    it "should have base title" do
      page.should have_selector('title', :text => base_title)
    end
  end
=end

end
