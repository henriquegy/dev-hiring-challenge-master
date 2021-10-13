Given('volta para a tela de pesquisa') do
  # visit '/'
  visit root_path
end

When('digita-se o nome de um repositorio para busca') do
  within('form#frm_search_gitub_jgfh21rt564y') do
    fill_in 'search[query]', with: 'spotcode+language:ruby'
  end

  click_button 'Find'
end

Then('retorna uma lista de repositorios encontrados') do
  expect(page).to have_selector(:css, '.row.no-gutters')
end