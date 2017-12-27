Dado("que esteja no site www.inmetrics.com.buscar") do                            
  visit "http://www.inmetrics.com.br"     
end                                                                               
                                                                                  
Quando("buscar em quem somos") do                                                 
  fill_in(:xpath, 'xpaht copiado', :with => 'Texto para por no campo') 
  fill_in('name_3_firstname', :with => 'Meire') 
  fill_in('name_3_lastname', :with => 'Borges') 
end                                                                               
                                                                                  
Então("apresenta as informções") do                                               
  assert_text('Adquirimos sólida experiência')     
end   


