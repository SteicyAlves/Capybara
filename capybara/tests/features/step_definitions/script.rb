Quando("eu uso um script") do
    visit('/outros/scroll')

    #execute_script() - executa um script(em jquery por exemplo) na página
    page.execute_script("window.scrollBy(0,1500)")
    sleep(5)

    #evaluate_script() - executa um script que receba um retorno
    @result = page.evaluate_script('4 + 4');
    puts @result
end