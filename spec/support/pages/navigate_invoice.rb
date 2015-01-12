class Navigate_invoice < SitePrism::Page

	element :order_tab,"a[href='/invoices']"
	element :advance_button,"#si_invoice_header"
	
    def navigate_inv
		click_link('Invoices', :href => "/invoices")
		advance_button.click
	end

end