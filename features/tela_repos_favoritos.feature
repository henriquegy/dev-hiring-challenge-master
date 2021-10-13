Feature: Eu como usuário quero ver meus repositórios favoritos
  Scenario: na tela root de pesquisa
    Given visito a tela de pesquisa
    When clico no botão de repositórios favoritos
    Then recebo a lista repositórios favoritos

  Scenario: na de repositórios favoritos
    Given visito a tela de repos favoritos
    When clico no botão search
    Then sou direcionado para a tela principal de pequisa