require "./spec/support/sections/login_coupadev_section.rb"

class LoginPage < SitePrism::Page
	set_url "https://sail.coupadev.com"
	section :login, Login, "div.login"

 def useMeToLogin(uname,pwd)
    login.input_username_field.set uname
    login.input_password_field.set pwd
    login.input_submit.click
 end

end