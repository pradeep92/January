class Navigate_expense< SitePrism::Page

	 element :expense_tab,"a[href='/expense_reports/home']"
	 element :expense_report,"a[href='/expense_reports']"
	 element :advance_button,"#si_expense_report"

	def navigate_exp
	click_link('Expenses', :href => "/expense_reports/home")
	click_link('Expense Reports', :href=>"/expense_reports")
	advance_button.click
	end
end