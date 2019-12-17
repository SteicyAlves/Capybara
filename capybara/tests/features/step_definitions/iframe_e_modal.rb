Quando("entro no iframe e preencho os campos") do
  visit("/mudancadefoco/iframe")

  #Mudo foco para o iframe
  within_frame("id_do_iframe") do
    #Faço as ações dentro do iframe

    fill_in(id: "first_name", with: "Eduarda")
    fill_in(id: "last_name", with: "Justim")
    fill_in(id: "password", with: "Teste")
    fill_in(id: "email", with: "teste@teste.com")
  end
end

Quando("entro no modal e verifico o texto") do
  visit("/mudancadefoco/modal")
end

Quando("fecho o modal") do
end
