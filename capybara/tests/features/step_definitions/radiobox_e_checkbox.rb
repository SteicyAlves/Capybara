Quando("eu marco um checkbox e um radiobox") do
  visit("/buscaelementos/radioecheckbox")

  #Marcando um item no checkbox
  find("label[for='white']").click
  check("purple", allow_label_click: true) #Neste  caso foi necessário implementar o evento de clique no elemento, pois ele não estava clicável
  #allow_label_click: true - torna um label clicável

  #Desmarcando a opção selecionada no checkbox
  uncheck("purple", allow_label_click: true)

  #Marcando um item do radiobox
  choose("red", allow_label_click: true)

  sleep(5)
end
