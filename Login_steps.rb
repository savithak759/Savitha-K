Given("I am on the Gmail homepage") do
visit ('https://www.gmail.com/')
end

Given("I enter username") do
fill_in('identifierId', :with => 'kkirthy80@gmail.com') 
end

Given("I click on  Next") do
find(:xpath, './/span[text()="Next"][contains(@class, "RveJvd")]').click
end

Given("I enter password") do
fill_in('password', :with => 'kirthy@123') 
end

When("I click on Next button") do
find(:xpath, './/span[text()="Next"][contains(@class, "RveJvd")]').click
end


Then("I should navigate to Inbox page") do
expect(page).to have_text 'Primary'
end