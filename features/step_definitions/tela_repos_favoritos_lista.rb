Given('visito a tela de pesquisa') do
  # visit '/'
  visit root_path
end

When('clico no botão de repositórios favoritos') do
  page.all(:link, 'Favorits')[0].click
end

Then('recebo a lista repositórios favoritos') do
  expect(page).to have_css("tr", :minimum  => 1)
end