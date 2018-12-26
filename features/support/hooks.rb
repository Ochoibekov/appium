Before do |variable|
	$driver.start_driver
end

After do |variable|
	$driver.driver_quit
end

After do |scenario|
  if scenario.failed?
    screenshot("./screenshots/screenshot - #{Time.now.strftime('%Y-%m-%d %H-%M-%S')}.png")
  end  
end