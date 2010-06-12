require "rubygems"
require "spec"
require "watir"

ie = Watir::IE.new

Given /^that I am on the Google Homepage$/ do
  ie.goto "http://www.google.com"
end

When /^I search for "([^"]*)"$/ do |term|
  ie.text_field(:name, "q").set term
  ie.button(:name, "btnG").click # "btnG" is the name of the Search button
end

Then /^I should see "([^"]*)"$/ do |arg1|
  puts ie.html + "__what"
  puts "you have test"
  ie.text.include?(arg1).should == true
end