Given("the app has launched") do
  
end

Then("remove ads from screen") do
  current_page = GeneralPage.new
  current_page.close_ads
end

Then("go to profile") do
  current_page = GeneralPage.new
  current_page.go_to_profile
end

Then("login") do
  current_page = GeneralPage.new
  current_page.login	
    # Appium::TouchAction.new.tap( x: 200, y: 941, count: 1).release.perform
    # Appium::TouchAction.new.tap( x: 75, y: 188, count: 1).release.perform
end

Then("go to food section") do
    current_page = GeneralPage.new
    current_page.go_to_food_section
end

Then(/^search for "([^"]*)"$/) do |arg|
  current_page = GeneralPage.new
  current_page.enter_search_params(arg)
end

Then("open card") do
  current_page = GeneralPage.new
  current_page.open_card
end

Then("check information") do
  current_page = GeneralPage.new
  current_page.check_information
end


















