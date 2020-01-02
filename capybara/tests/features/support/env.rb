require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
#require 'capybara/cucumber' #removo este require do cucumber para que a sessão dos testes seja a mesma, ou seja, um teste depende do outro
require 'selenium-webdriver'

World(Capybara::DSL) #após remover, adiciono a DSL e RSpecMatchers do capybara
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #Drivers do Capybara: selenium #selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium_chrome #Driver padrão do navegador usado
    config.app_host = 'https://automacaocombatista.herokuapp.com' #URL padrão em que os testes serão rodados
    config.default_max_wait_time = 5 #Tempo padrão de timeout em que vai esperar até os elementos da tela carregarem (por segundo)
end