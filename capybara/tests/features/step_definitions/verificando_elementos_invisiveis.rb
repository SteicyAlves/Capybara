Quando("clico em um botão") do
    visit('/buscaelementos/botoes')
    find('#teste').click
  end
  
  Então("verifico se o texto desapareceu da tela com sucesso") do
    @texto = find('#div1')

    #Realizando asserts. Verificando elementos da tela
    expect(@texto.text).to eql 'Você Clicou no Botão!'
    page.assert_text('Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    find('#teste').click

    #Verifica se o texto não existe na tela
    assert_no_text('Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
  end