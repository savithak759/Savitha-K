if ENV['chrome']
 Capybara.default_driver = :chrome
 Capybara.register_driver :chrome do |app|
 options = {
 :js_errors => false,
 :timeout => 360,
 :debug => false,
 :inspector => false,
 }
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
 end
elsif ENV['firefox']
 Capybara.default_driver = :firefox
 Capybara.register_driver :firefox do |app|
 options = {
 :js_errors => true,
 :timeout => 360,
 :debug => false,
 :inspector => false,
 }
 Capybara::Selenium::Driver.new(app, :browser => :firefox)
 end
 end
 
Given("I am on the Gmail homepage") do
visit ('https://www.gmail.com/')
end

And("I enter username") do
fill_in('identifierId', :with => 'kkirthy80@gmail.com') 
end

And("I click on  Next") do
find(:xpath, './/span[text()="Next"][contains(@class, "RveJvd")]').click
end

And("I enter password") do
fill_in('password', :with => 'kirthy@123') 
end

When("I click on Next button") do
find(:xpath, './/span[text()="Next"][contains(@class, "RveJvd")]').click
end

Then("I should navigate to Inbox page" ) do
expect(page).to have_text 'Primary'
sleep 2
end

When("click on Google account button") do
click_on(class: 'gb_D gb_Oa gb_i')
sleep 2
end

And("I click on signout button") do
find(:xpath, './/a[text()="Sign out"][contains(@class, "gb_Fb gb_5f gb_dg gb_Ne gb_Vc")]').click
sleep 5
end

