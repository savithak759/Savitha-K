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


Then("I should navigate to Inbox page" ) do
expect(page).to have_text 'Primary'
sleep 2
end

Given("I am on the compose page") do
find(:xpath, './/div[text()="Compose"][contains(@class, "T-I J-J5-Ji T-I-KE L3")]').click
end

Given("I enter emailid") do
fill_in('to', :with => 'kkirthy80@gmail.com') 
sleep 3
end

Given("I enter subject") do
fill_in('subjectbox', :with => 'Attach_file') 
sleep 3
end

Given("I click on send button") do
find(:xpath, './/div[text()="Send"]').click
sleep 2
end