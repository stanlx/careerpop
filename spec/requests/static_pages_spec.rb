require 'spec_helper'

describe "Static pages" do

	  describe "Home page" do

			    it "should have the content 'Welcome to POP Q'" do
						      visit '/static_pages/home'
									      expect(page).to have_content('Welcome to POP Q')
												    end
					  end
end
