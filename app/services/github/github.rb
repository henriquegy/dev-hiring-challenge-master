require 'rest-client'
require 'json'

class GithubRepos
  def initialize(query_search)
    @gitrepo_url = 'https://api.github.com/search/repositories?q='
    @query_search = query_search
  end

  def execute_query
    @response = RestClient.get "#{@gitrepo_url}#{@query_search}"
    return self
  end

  def get_response_status
    @response.code
  end

  def get_response_body
    JSON.parse(@response)
  end
end