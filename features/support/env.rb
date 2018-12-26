require "appium_lib"

def caps
	{ caps: {
		deviceName: "Redmi",
		platformName: "Android",
		app: "./apk/app-prod-debug.apk"

		}
	}
end

class AndroidWorld
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods AndroidWorld

World do
	 AndroidWorld.new
end