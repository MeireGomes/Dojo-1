Dado("que esteja no site e acesse a lista de funcionários") do
  visit ("http://opensource.demo.orangehrmlive.com/")
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button ('btnLogin')
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  click_link('menu_pim_viewEmployeeList')
end

Quando("eu selecionar um funcionário existente") do
  fill_in('empsearch_id', :with => '0001')
  click_button ('searchBtn')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

Então("cadastro de funcionário pode ser manipiulado  e editado") do
 find(:xpath, '//*[@id="btnSave"]').click
 fill_in('personal_txtOtherID', :with => '123')
 find(:xpath, '//*[@id="btnSave"]').click
 assert_text('Successfully Saved') 
end