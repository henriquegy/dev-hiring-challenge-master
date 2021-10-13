Given('carrega-se a tela de pesquisa') do
  # visit '/'
  visit root_path
end

When('não digita nada e tecla enter') do
  within('form#frm_search_gitub_jgfh21rt564y') do
    fill_in 'search[query]', with: ''
  end

  click_button 'Find'
end

Then('informa que nenhum repo foi encontrado') do
  expect(page).to have_content('Any founded repositorie!')
end