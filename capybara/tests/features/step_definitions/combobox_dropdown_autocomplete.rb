Quando("interajo com dropdown e select") do
  visit("/buscaelementos/dropdowneselect")

  #Clicando no dropdown e depois em seu item
  find(".btn.dropdown-button").click

  find("#dropdown1").click
  find(".btn.dropdown-button").click
  find("#dropdown2").click
  find(".btn.dropdown-button").click
  find("#dropdown3").click
  find(".btn.dropdown-button").click
  find("#dropdown4").click

  all('input.select-dropdown')[0].click
  find('span', text: 'Dragon Ball').click
 
  all('input.select-dropdown')[1].click
  find('span', text: 'Ronaldo').click
  find('span', text: 'Romario').click

  all('input.select-dropdown')[2].click
  find('.optgroup-option', text: 'Inglaterra').click

  all('input.select-dropdown')[3].click
  find('span', text: 'Mulher').click
 
  all('input.select-dropdown')[4].click
  find('span', text: 'Feminino').click

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
  sleep(2)
  #Marcando um item do autocomplete
  find("#autocomplete-input").set "Rio de Jane" #Insere o texto no campo
  sleep(2)
  find("ul[id^='autocomplete-options-']").click #Clica na opção mostrada pelo autocomplete

  sleep(3)
end
