require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have content 'Demo App'" do
      visit '/static_pages/home'
      page.should have_content('Demo App')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Demo App")
  	end

  	it "should not have a custom page title" do
  		visit '/static_pages/home'
  		expect(page).not_to have_title('| Home')
  	end
  end
end
