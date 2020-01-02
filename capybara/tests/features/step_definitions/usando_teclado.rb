Quando("realizo ações com o teclado") do
    visit('/users/new')

    #send_keys() - permite chamar ações do teclado
    find('#user_name').send_keys(:page_down)
    
    find('input[value="Criar"]').send_keys(:enter)
    sleep(5)
  end