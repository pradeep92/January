class Navigate_order < SitePrism::Page

	element :order_tab,"a[href='/order_headers']"
	element :advance_button,"#si_order_header"
	

def navigate_ord
		click_link('Orders', :href => "/order_headers")
		advance_button.click
	end

end