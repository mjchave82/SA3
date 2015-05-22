Given(/^I am on the Digital Academy homepage$/) do
  visit("/courses")
end

Given(/^I click “New Course”$/) do
  click_on "New Course"
end

When(/^I add a course with Title (\d+), Overview (\d+) and (\d+)$/) do |title, overview, duration|
  fill_in "Title", :with => title
  fill_in "Overview", :with => overview
  fill_in "Duration", :with => duration
end

When(/^I click the “Save” button$/) do
  click_on "Create Course"
end

Then(/^I should see Title (\d+)$/) do |title|
  expect(page).to have_content title
end

Then(/^I should see a success$/) do
  expect(page).to have_content "Course was successfully created"
end

Then(/^I should see an error message$/) do
  expect(page).to have_content "error"
end