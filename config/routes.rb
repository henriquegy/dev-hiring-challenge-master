require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root :to => "searches#index"

  namespace :user do
    resources :registrations
  end

  post "searches/get_repos_github", to: "searches#get_repos_github"
  get "searches/set_favorit_repos", to: "searches#set_favorit_repos"
  get "searches/list_all_repos", to: "searches#list_all_repos"
  resources :searches, only: [:index, :destroy]
end
