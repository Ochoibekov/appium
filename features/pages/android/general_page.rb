module Android
	class GeneralPage
		
		def close_ads
			$driver.find_element(id: "close").click
		end

		def go_to_profile
			$driver.find_element(id: "tab_profile").click
			sleep(5)
		end

		def login
			#NOTE: for this element there is no suitable locators
			Appium::TouchAction.new.tap( x: 200, y: 941, count: 1).release.perform
			# driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.view.ViewGroup[5]").click
			# driver.find_element(:xpath, "//android.view.ViewGroup[@text='Войти']").click
			$driver.find_element(id: "editEmail").send_keys("omka3s@gmail.com")
			$driver.hide_keyboard
			$driver.find_element(id: "editPassword").send_keys("homework")
			$driver.hide_keyboard
			$driver.find_element(id: "login").click
			sleep(5)
			go_to_main_menu
			sleep(4)
		end

		def go_to_main_menu
			# NOTE: this element sometimes works with accessibility_id, sometimes not
			# driver.find_element(:accessibility_id, "Перейти вверх").click
			# Appium::TouchAction.new.tap( x: 75, y: 188, count: 1).release.perform
			$driver.back
		end

		def go_to_food_section
			$driver.find_element(id: "tab_food").click
			sleep(4)
			click_search
		end

		def click_search
			$driver.find_element(id: "searchButton").click
		end

		def enter_search_params(arg)
			$driver.find_element(id: "search_src_text").click
			$driver.find_element(id: "search_src_text").send_keys(arg)	
		end

		def open_card
			$driver.find_element(id: "title").click
			sleep(4)
		end

		def check_information
			$driver.find_element(:xpath, "//android.widget.TextView[@text='160.0сом']")
			$driver.find_element(:xpath, "//android.widget.TextView[@text='Доставка:']")
			$driver.find_element(:xpath, "//android.widget.TextView[@text='Время работы:']")
			$driver.find_element(:xpath, "//android.widget.TextView[@text='Средний чек:']")
			$driver.find_element(:xpath, "//android.widget.TextView[@text='09:00-20:30']")
			$driver.find_element(:xpath, "//android.widget.TextView[@text='400сом']")
		end

	end
end