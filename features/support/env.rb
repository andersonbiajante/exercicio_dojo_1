#Sobe as gems informadas em memória
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

#Timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela do navegador ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize
