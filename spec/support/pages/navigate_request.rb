class Navigate_request < SitePrism::Page

	element :request_tab,"a[href='requisition_headers']"
	element :advance_button,"#si_requisition_header"
	element :search_button, ".button.small"
	

	def navigate_req
		click_link('Requests', :href => "/requisition_headers")
		advance_button.click
	end
	
end