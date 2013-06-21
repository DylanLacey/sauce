require 'spec_helper'

describe "Wikipedia's Miso Page", :sauce => true do
  it "Should mention a favorite type of Miso" do
    visit "http://en.wikipedia.org/"
    STDERR.puts "##  Visited Wikipedia"
    fill_in 'search', :with => "Miso"
    STDERR.puts "##  Filled in form"
    click_button "searchButton"
    STDERR.puts "##  Clicked button"
    page.should have_content "Akamiso"
    STDERR.puts "## Page had content"
  end
end
