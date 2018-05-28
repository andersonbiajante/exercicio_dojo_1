Dado("que eu esteja logado no site OrangeHRM para incluir empregado") do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Quando("inserir dados do empregado") do
  fill_in "firstName", :with =>  "Anderson"
  fill_in "lastName", :with =>  "Biajante"
  click_button('btnSave')
end

Então("as informações do empregado serão cadastradas") do
  assert_text('Anderson Biajante')
end