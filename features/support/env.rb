require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'allure-cucumber'

case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
else 
    raise "Navegador incorreto ou nao selecionado"
end


Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = "https://flipboard.com"
    config.default_max_wait_time = 20
end

AllureCucumber.configure do |config|
    config.results_directory = "/relatorios"
    config.clean_results_directory = true
end

