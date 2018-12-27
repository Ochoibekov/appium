Given("the app has launched") do
  
end

Then("remove ads from screen") do
  current_page = $ENV::GeneralPage.new
  current_page.close_ads
end

Then("go to profile") do
  current_page = $ENV::GeneralPage.new
  current_page.go_to_profile
end

Then("login") do
  current_page = $ENV::GeneralPage.new
  current_page.login	
end

Then("go to food section") do
    current_page = $ENV::GeneralPage.new
    current_page.go_to_food_section
end

Then(/^search for "([^"]*)"$/) do |arg|
  current_page = $ENV::GeneralPage.new
  current_page.enter_search_params(arg)
end

Then("open card") do
  current_page = $ENV::GeneralPage.new
  current_page.open_card
end

Then("check information") do
  current_page = $ENV::GeneralPage.new
  current_page.check_information
end


















