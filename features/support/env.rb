#encoding: utf-8

require 'selenium-webdriver'


Selenium::WebDriver::Service.chrome(path: 'C:\webdrivers/chromedriver.exe') 
$driver = Selenium::WebDriver.for :chrome   
$driver.manage().window().maximize()
$driver.navigate.to("https://www.google.com.br/") 


After do |scenario|
    $driver.find_element(name: 'q').clear
end

def text_exists?(text)
    $driver.find_elements(:xpath, "//*[text()='#{text}']")
end


