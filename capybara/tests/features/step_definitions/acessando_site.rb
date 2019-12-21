Quando("acesso a url") do
    #O comando visit é usado para acessar uma url
    #visit 'https://automacaocombatista.herokuapp.com/treinamento/home' #Posso usar parêntesis ou não
    visit('/treinamento/home') #Posso passar a url completa ou parte dela (neste caso ele irá juntar essa parte com url padrão do env)
end
  
  Então("eu verifico se estou na página correta") do
    #O comando have_current_path() verifica se a url atual é a informada
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end
  