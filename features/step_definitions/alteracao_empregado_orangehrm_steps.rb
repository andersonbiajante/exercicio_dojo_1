Dado("que eu esteja logado no site OrangeHRM pra alterar empregado") do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Quando("localizar os dados do empregado e alterar suas informações") do

  find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').click
  click_button('btnSave')
  choose('personal_optGender_1').click
  select('Brazilian', :from => 'personal_cmbNation')
  click_button('btnSave')
end

Então("as informações do empregado serão alteradas") do
  assert_text('Successfully Saved')
end