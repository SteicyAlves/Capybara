Quando("eu cadastro o usuário") do
    visit('/users/new')
    
    fill_in(id: 'user_name', with: 'Bruno')
    find('#user_lastname').set('Batista')
    find('#user_email').send_keys('brunobatista@gmail.com')
    fill_in(id: 'user_address', with: 'Rua 12')
    find('#user_university').set('Anhanguera')
    find('#user_profile').send_keys('QA')
    find('#user_gender').set('Masculino')
    fill_in(id: 'user_age', with: '28')

    find('input[value="Criar"]').click
    sleep(5)
  end
  
  Então("verifico se o usuário foi cadastrado;") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    sleep(5)  
end
  
  Quando("edito um usuário") do
    click_on('Editar')
  end
  
  Então("verifico se o usuário foi editado.") do
    
  end