Quando("seleciono o mouse hover") do
  visit("/iteracoes/mousehover")

  #hover - move o mouse para o elemento
  find(".activator").hover

  #hover.click - move o mouse para o elemento e clica nele
  #find(".activator").hover.click
  sleep(5)
end
