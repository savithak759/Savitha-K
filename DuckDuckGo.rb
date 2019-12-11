capybara.default_driver=:selenium

Given(/^I am on DuckDuckGo$/) do
visit('http://www.DuckDuckGo.com')
end

When(/^I type in the search engine with "([^"]*)"$/) do |arg1|
fill_in('search_form_input_homepage', :with => arg1)
end

When(/^I click Submit$/) do
click_button('search_button_homepage')
end

Then(/^I should see url with "([^")]*"$/) do |arg1|
expect(page).to have_link("Canada-Wikipedia, the free encyclopedia")
end
