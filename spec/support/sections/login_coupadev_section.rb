
class Login < SitePrism::Section
  	element :input_username_field, "#user_login"
	element :input_password_field, "#user_password"
	element :input_submit, ".button "	
	element :signout,"a[href='/sessions/destroy']"
end