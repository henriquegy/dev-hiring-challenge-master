require 'rails_helper'
require_relative '../factories/search'

RSpec.describe "Searches", type: :request do
  context "responde 200 em todas as rotas" do
    it 'root_path' do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'searches_list_all_repos_path' do
      get searches_list_all_repos_path
      expect(response).to have_http_status(200)
    end

    it 'set_favorit_repos' do
      search_params = attributes_for(:search)
      get searches_set_favorit_repos_path, params: { search: search_params }
      expect(response).to have_http_status(200)
    end

    it 'get_repos_github' do
      search_params = attributes_for(:search_query)
      post searches_get_repos_github_path, params: { search: search_params }
      expect(response).to have_http_status(200)
    end
  end
end
