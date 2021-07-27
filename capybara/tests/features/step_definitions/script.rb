Quando('eu uso um script') do
    visit('/outros/scroll')
    page.execute_script("window.scrollBy(0,1500)")
    #execute_script() - executa um script mas sozinho não retorna nada
    sleep(3)

    @result = page.evaluate_script("4 + 4")
    #evaluate_script() - executa um script e retorna o retorno do script
end

Então('obtenho um resultado') do
    expect(@result).to eql 8
end