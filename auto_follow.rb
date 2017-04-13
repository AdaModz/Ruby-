require 'watir'
#require_relative 'InfoLogin'

usernamep = $username
password = $password
user = "judgementd"


#open browser
browser =  Watir::Browser.new :chrome
browser.goto "instagram.com/accounts/login/"

#navigate to username
puts " Logging In .... Bitch Dab ?"

browser.text_field(:name => "username").set "#{username}"
browser.text_field(:name => "password").set "#{password}"

 #click Login button
 browser.button(:class => '_ah57t _84y62 _i46jh _rmr7s').click
 sleep(2)

 #navigat to the user page
 browser.goto"instagram.com/#{user}/"
#if followuing the follow
 if browser.button(:class => '_ah57t _84y62 _frcv2 _rmr7s').exists?
   puts "following #{user}"
   browser.button(:class => '_ah57t _84y62 _frcv2 _rmr7s').click
 end
 sleep(3)
 #unfollow the user
if broser.button(:class=> '_ah57t _6y2ah _frcv2 _rmr7s').exists?
  puts "unFollowing #{user}"
  browser.button(:class=> '_ah57t _6y2ah _frcv2 _rmr7s').click
end
sleep(360)
