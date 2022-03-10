Quando("eu entro na janela e verifico a mensagem") do
    visit('/mudancadefoco/janela')

    #Pega a janela aberta pela ação
    janela = window_opened_by do
        click_link('Clique aqui')
    end

    #Muda o foco para a janela
    within_window janela do
        #Verifica se a url atual é a especificada
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
    
        #Fecho a janela
        #janela.close
        sleep(3)
    end

    
    click_link('Clique aqui')

    #Muda o foco para a última aba
    switch_to_window windows.last

        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
    
        #Fecho a janela
        #windows.last.close
        sleep(3)

  end
  
  Quando("eu entro no alert e verifico faco a ação") do
    visit('/mudancadefoco/alert')

    #Clica no botão de Ok do alert (alert que só tem ok)
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    sleep(5)

    #Clica no botão de Cancelar do alert (alert que tem ok e cancelar)
    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm
    sleep(5)

    #Clica no botão de Ok do alert (alert que tem ok e cancelar)
    find('button[onclick="jsConfirm()"]').click
    page.accept_confirm
    sleep(5)

    #Preenche o prompt e clica em Ok
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Otton')
    sleep(5)

    #Clica no botão de cancelar do prompt
    find('button[onclick="jsPrompt()"]').click
    page.dismiss_prompt
    sleep(5)
  end

=begin
    
within_window - Altera para a janela fornecida, executa um bloco e troca de volta para outra janela
switch_to_window - Retorna a janela que foi trocada
window_opened_by - Obtém a janela que foi aberta no bloco passado
current_window - Retorna a janela atual
open_new_window - Abre uma nova janela
windows - Obtém todas as janelas abertas

resize_to 800, 600 - Muda o tamanho da janela de acordo com o especificado
.close - Fecha uma janela
.maximize - Maximiza uma janela
.size - Obtém o tamanho da janela
.current? - Verifica se esta é a janela na qual os comandos estão sendo executados
.closed? - verifica se a janela está fechada
.exists? - Verifica se a janela não está fechada
    
=end