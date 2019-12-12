Quando("interajo com dropdown e select") do
  visit("/buscaelementos/dropdowneselect")

  #Clicando no dropdown e depois em seu item
  find(".btn.dropdown-button").click
  find("#dropdown3").click

  #Marcando uma opção em um option
  select "Chrome", from: "dropdown" #Digo a opção que quero marcar e depois de qual select a opção pertence (acha a opção pelo texto do option)
  #select "Chrome", from: "dropdown", visible: false #Caso o css esteja ocultando as options do select, é necessario setar a propriedade visible: false, pois da forma acima não vai localizar
  
  find('option[value="2"]').select_option #Irá selecionar a opção do option mapeado

  #select - encontra uma caixa de seleção específica mapeada
  #unselect - encontra uma caixa de seleção específica mapeada, e desmarca uma opção específica dela
  #select_option - seleciona uma opção específica da caixa de seleção

end

Quando("preencho o autocomplete") do
  visit("/widgets/autocomplete")

  #Marcando um item do autocomplete
  find("#autocomplete-input").set "Rio de Jane" #Insere o texto no campo
  find("ul[id^='autocomplete-options-']").click #Clica na opção mostrada pelo autocomplete

  sleep(3)
end
