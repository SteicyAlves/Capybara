Quando('eu uso um script') do
    visit('/outros/scroll')

    #execute_script() - executa um script(em jquery por exemplo) na página
    page.execute_script("window.scrollBy(0,1500)") #executa um script mas sozinho não retorna nada
    sleep(3)

    #evaluate_script() - executa um script e retorna o retorno do script
    @result = page.evaluate_script("4 + 4")
    puts @result
end

Então('obtenho um resultado') do
    expect(@result).to eql 8
end