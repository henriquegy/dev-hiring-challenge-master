Given('visito a tela de repos favoritos') do
  # visit '/searches/list_all_repos'
  visit searches_list_all_repos_path
end

When('clico no botão search') do
  page.all(:link, 'Search')[0].click
end

Then('sou direcionado para a tela principal de pequisa') do
  expect(page).to have_css('#query_github_sf32we5', :maximum=>1)
end