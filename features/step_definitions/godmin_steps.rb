Given(/^the following users exist$/) do |table|
  table.hashes.each do |hash|

    FactoryGirl.create(:user, user_name: hash[:user_name])

  end
end

Given(/^the admin account is set up$/) do
  AdminUser.create!(email: 'admin@admin.com', password: 'password')
end

Given(/^I am logged in as admin$/) do
  visit root_path
  fill_in'Email', with: 'admin@admin.com'
  fill_in 'Password', with: 'password'
  click_link_or_button 'Sign in'
end

Given(/^I visit the "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_conent text
end
