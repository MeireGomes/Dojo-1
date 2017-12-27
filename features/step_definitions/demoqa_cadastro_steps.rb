Dado("que esteja no site {string}") do |string|                              
  visit'http://demoqa.com/' 
end                                                                          
                                                                             
Quando("eu realizar o cadastro") do                                          
  click_link("Registration")
  fill_in('name_3_firstname', :with => 'Meire')
  fill_in('last_name', :with => 'Meire')
  check('checkbox_5[]', match: :first)
  fill_in('phone_9', :with => '5511997411538')
  fill_in('username', :with => 'MBORGESSS1')
  fill_in('email_1', :with => 'MBORGESSSa@DEMOQA.COM')
  fill_in('password_2', :with => '123456789')
  fill_in('confirm_password_password_2', :with => '123456789')
  click_button('Submit')
end                                                                          
                                                                             
Então("usuário e cadastrado com sucesso") do                                 
  assert_text('Thank you for your registration')
end                                                                         