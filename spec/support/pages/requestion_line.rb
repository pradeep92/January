class Requestion_line < SitePrism::Page

element :requisition_lines,"a[href='/requisition_lines']"
element :create_view, '#requisition_line_filter'
element :create_name, '#data_table_view_name'
element :create_save, '.button.right.blue'
element :export_button,'#requisition_line_export'
element :available_field, 'td:first-child .sortable.ui-sortable:first-child li:first-child'
element :selected_field, 'td:last-child .sortable.ui-sortable:last-child'


	def view
	create_view.select('Create View')
	sleep 5
	end
	
	def fillname_table(fillname)
	create_name.set fillname
	end

	def drag_column
	available_field.drag_to(selected_field)
	sleep 10
	end

end