Quando("eu acesso a url de botões") do
    visit('/buscaelementos/botoes')
  end
  
  Então("eu verifico se encontrei os elementos.") do
    #all - busca todos os elementos que contenham o elemento mapeado
    page.all(:css, '.btn') #Não precisaria especificar que a busca é por css, pois esse já é um padrão do capybara

    #find - busca um elemento mapeado
    find('#teste')

    #find_by_id - busca um elemento por id
    find_by_id('teste')

    #find_button - busca um botão com elemento mapeado
    find_button(class: 'btn waves-light')

    #first - busca o primeiro elemento da página que tenha as características mapeadas
    first('.btn')

    #find_link - busca pelo link especificado
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
  end