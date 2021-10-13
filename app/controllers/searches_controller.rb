require_relative '../services/github/github'

class SearchesController < ApplicationController
  before_action :set_favorit_repo, only: %i[ destroy ]

  # GET /searches or /searches.json
  def index
    @searches = Search.new
  end

  def list_all_repos
    @favorite_repos = Search.all
  end

  def destroy
    @favorite_repo.destroy

    respond_to do |format|
      format.html { redirect_to searches_list_all_repos_path }
    end
  end

  def get_repos_github
    @query = search_params[:query]
    @repositories = nil

    unless @query == ""
      repos_git = GithubRepos.new(search_params[:query])
      @repositories = repos_git.execute_query.get_response_body
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def set_favorit_repos
    favorit_repos = Search.new(search_params)

    if favorit_repos.save
      data = {:sucess => "inserted"}
    else
      data = {:error => favorit_repos.errors.to_s}
    end

    respond_to do |format|
      format.html
      format.json {render :json => { :data => data } }
    end
  end

  private
    def set_favorit_repo
      @favorite_repo = Search.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def search_params
      params.require(:search).permit(:query, :repo_name, :repo_link, :repo_id)
    end
end
