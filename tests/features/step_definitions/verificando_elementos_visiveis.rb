Quando("clico no botão") do
    visit('/buscaelementos/botoes')
    find('#teste').click
  end
  
  Então("verifico se o texto aparece na tela com sucesso") do
    @texto = find('#div1')

    #Realizando asserts. Verificando elementos da tela
    expect(@texto.text).to eql 'Você Clicou no Botão!'

    page.assert_text(text, 'Você Clicou no Botão!')

    page.has_text?('Você Clicou no Botão!')

    have_text('Você Clicou no Botão!')
  end