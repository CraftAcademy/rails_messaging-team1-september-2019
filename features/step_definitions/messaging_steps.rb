When("I am on the inbox page") do
    visit root_path
  end
  
  Then("I should see a list of mail") do |content|
    expect(page).to have_content content
  end
  
  Then("I should see them assorted by date") do

  end