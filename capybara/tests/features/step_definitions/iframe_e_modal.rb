Quando("entro no iframe e preencho os campos") do
  visit("/mudancadefoco/iframe")

  #Mudo o foco para o iframe
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
  click_on("Abrir")

  #Mudo o foco para o modal
  within("#modal1") do
    texto = find("h4")
    expect(texto.text).to eql "Modal Teste"
  end
  sleep(5)
end

Quando("fecho o modal") do
  within("#modal1") do
    find(".modal-close").click
  end
end

=begin
  
Para mudança de foco temos:

within() - Para modais e outros elementos
within_frame() - Para frames
within_fieldset() - Para fieldsets
within_table() - Para tabelas
  
=end
