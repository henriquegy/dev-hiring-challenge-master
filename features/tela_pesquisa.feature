Feature: Eu como usuário quero pesquisar os repositórios do git
  # Coloque @javascript nos cenários que deseja executar no browser
  Scenario: na tela de pesquisa sem dados
    Given carrega-se a tela de pesquisa
    When não digita nada e tecla enter
    Then informa que nenhum repo foi encontrado

  Scenario: na tela de pesquisa com dados
    Given volta para a tela de pesquisa
    When digita-se o nome de um repositorio para busca
    Then retorna uma lista de repositorios encontrados