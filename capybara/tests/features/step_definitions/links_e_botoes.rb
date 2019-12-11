Quando("clico em botões") do
  visit('/') #Diz que quero acessar a url principal, declarada no env
  
  #click_on - clica em um link ou botão que tenha o mapeamento informado, neste caso, no que tiver este texto
  click_on('Começar Automação Web')

  visit('/')
  #click_on - clica em um link ou botão que tenha o mapeamento informado, neste caso, no que tiver este texto
  click_link_or_button('Começar Automação de Api')

  visit('/')

  #click_link - clica em um link pelo id, texto ou title
  click_link('Github')

  visit('/buscaelementos/botoes')
  
  #click_button - clica no primeiro botão encontrado que tenha o elemento mapeado, neste caso, pela classe
  click_button(class: 'btn waves-light')

  #find().click - procura o elemento mapeado e executa uma ação de clique
  find('a[onclick="ativaedesativa2()"]').click

  #find().double_click - procura o elemento mapeado e executa uma ação de duplo clique
  find('a[onclick="ativaedesativa2()"]').double_click

  #find().right_click - procura o elemento mapeado e executa uma ação de clique com botão direito
  find('a[onclick="ativaedesativa3()"]').right_click

  visit('/treinamento/home')
  find('a', text: 'Busca de elementos').click
  click_link('Links')


  sleep(5)
end