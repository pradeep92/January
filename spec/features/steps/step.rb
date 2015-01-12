require "spec_helper"
require "./spec/support/pages/loginpage.rb"
require "./spec/support/pages/navigate_request.rb"
require "./spec/support/pages/navigate_order.rb"
require "./spec/support/pages/navigate_expense.rb"
require "./spec/support/pages/navigate_invoice.rb"
require "./spec/support/pages/requestion_line.rb"

module TestRails
    
	  step "I am login as :username and :password" do |uname, pwd|
      @login_obj = LoginPage.new 
      @request = Navigate_request.new
      @expense = Navigate_expense.new
      @order = Navigate_order.new
      @invoice = Navigate_invoice.new
      @req_line = Requestion_line.new
      @login_obj.load	
      @login_obj.useMeToLogin(uname,pwd)
    end

  	step "I am in homepage" do
  		@login_obj.has_content?('signout')
  	end

  	step "I am on the coupa home page" do 
  		@login_obj.has_content?('signout')
  	end

  	step "I navigate to Requests" do
  		@request.navigate_req
  	end

  	step "I click search" do
  		click_button ('Search')
  		sleep 5
  	end

  	step "I click 2 button to view next page" do
  		click_on ('2')
  		sleep 5
  	end

  	step "I click 3 button to view next page" do
  		click_on ('3')
  	end

  	step "I should be in next page" do 
  		page.has_content?('Requisitions')
  	end

  	step "I navigate to Orders" do
  		@order.navigate_ord
  		sleep 5
  	end

    step "I navigate to Invoices" do 
      @invoice.navigate_inv
    end

    step "I navigate to Expenses" do
      @expense.navigate_exp
    end

    step "I click on create view in requisition lines" do
      @req_line.requisition_lines.click
      @req_line.view
    end

    step "I enter name in create new table view as :Kumar" do |fillname|
      @req_line.fillname_table(fillname)
      sleep 3
      
    end

    step "I add every Available Column to the Selected Column" do 
      @req_line.drag_column()
    end

    step "I Click on save button" do 
      @req_line.create_save.click
    end

    step "I should get popup that view Created" do 
      page.has_content?('View created')
    end

    step "I Click on export button" do 
      @req_line.export_button.click
    end

    step "I should verify report recieve via mail" do 
      page.has_content?('The data you requested will be emailed to you shortly.')
      sleep 5
    end

end
RSpec.configure { |c| c.include TestRails }