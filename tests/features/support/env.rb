require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #Drivers do Capybara: selenium #selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium_chrome #Driver padrão do navegador usado
    config.app_host = 'https://automacaocombatista.herokuapp.com' #URL padrão em que os testes serão rodados
    config.default_max_wait_time = 5 #Tempo padrão de timeout em que vai esperar até os elementos da tela carregarem (por segundo)
end