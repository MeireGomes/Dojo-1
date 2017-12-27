Quando("eu realizar o login") do                                              
  visit ("http://opensource.demo.orangehrmlive.com/")
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button ('btnLogin')
end                                                                           
                                                                              
Então("usuário e cadastrado profissional cadastrado com sucesso") do          
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click 
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Matheus')
  fill_in('middleName', :with => 'Matheus')
  fill_in('lastName', :with => 'Matheus')
  click_button ('btnSave')
end                                                                           