Given("I visit the landing page") do
    visit root_path
  end
  
  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
  end
  
  Then("I should see {string}") do |string|
    expect(page).to have_content string
  end