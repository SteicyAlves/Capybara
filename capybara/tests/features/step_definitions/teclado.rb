Quando('realizo ações com o teclado') do       
    visit('/users/new')
    find('#user_name').send_keys(:page_down)
    sleep(1)
    find('#user_lastname').send_keys('Alves')
    sleep(1)
    find('input[name="commit"]').send_keys(:enter)
    sleep(2)
end