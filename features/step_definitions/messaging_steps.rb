When("I am on the inbox page") do
    visit mailbox_inbox_path
  end
  
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end
  
  Given("I am logged in as {string}") do |name|
    @user = User.find_by(name: name)
    login_as(@user, scope: :user)
  end

 And("I send a mail to {string}") do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
 end


 Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
 end

 
Given /^I log out$/ do
  logout
end

Given("following users exists") do |table|
  table.hashes.each do |user| 
    User.create(user)
  end
end

Given("I click on the {string} link") do |string|
  click_link_or_button string
end


Given("I am on the home page") do
  visit root_path
end