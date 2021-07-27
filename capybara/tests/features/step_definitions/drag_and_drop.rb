Dado("que eu estou na tela de dragdrop") do
    visit('/iteracoes/draganddrop')
  end
  
  Quando("movo o dragdrop") do
    @primeiro_elemento = find('#winston') #elemento que vou arrastar
    @segundo_elemento = find('#dropzone') #elemento com a dropzone para à qual vou arrastar

    @primeiro_elemento.drag_to(@segundo_elemento) #elemento_arrastado.drag_to(elemento pra onde vai ser arrastado)
    sleep(5)
  end
