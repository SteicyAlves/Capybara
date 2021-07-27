Dado('que estou na tela de dragdrop') do       
    visit('/iteracoes/draganddrop')
end
  
Quando('movo o dragdrop para o local desejado') do
    carinha = find('#winston') #elemento que vou arrastar
    quadrado = find('#dropzone') #elemento com a dropzone para à qual vou arrastar

    carinha.drag_to(quadrado) #elemento_arrastado.drag_to(elemento pra onde vai ser arrastado)
end