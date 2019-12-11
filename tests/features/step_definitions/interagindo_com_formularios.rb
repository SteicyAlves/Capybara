Quando("eu faço cadastro") do
   visit('/users/new')
    
   #Preenchendo campos através de elementos mapeados
    fill_in(id: 'user_name', with: 'Bruno')
    find('#user_lastname').set('Batista')
    find('#user_email').send_keys('brunobatista@gmail.com')
    fill_in(id: 'user_address', with: 'Rua 12')
    find('#user_university').set('Anhanguera')
    find('#user_profile').send_keys('QA')
    find('#user_gender').set('Masculino')
    fill_in(id: 'user_age', with: '28')

    #Clica no botão de criar
    find('input[value="Criar"]').click
    sleep(5)
  end
  
  Então("verifico se fui cadastrado") do
    texto = find('#notice')
    #Verifica se a mensagem apresentada foi de sucesso
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end