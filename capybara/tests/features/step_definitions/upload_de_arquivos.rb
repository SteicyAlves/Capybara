Quando("eu faço um upload de arquivo") do
    visit('/outros/uploaddearquivos')

    attach_file('upload', '/Users/san/Desktop/Automacao/Capybara/capybara/tests/features/capybara.png', make_visible: true)
    sleep(5)

    visit('/outros/uploaddearquivos')

    #File.join - Concatena um caminho
    #Dir - Representa diretórios no sistema de arquivos
    #.pwd - Retorna o caminho do diretório de trabalho atual
    @foto = File.join(Dir.pwd, 'features/capybara.png')
    
    #Passo o id de um input do tipo file
    attach_file('upload', @foto, make_visible: true)
    sleep(5)
end