class Search < ApplicationRecord
  validates :query, presence: true
  validates :repo_name, presence: true
  validates :repo_link, presence: true
  validates :repo_id, presence: true, uniqueness: { case_sensitive: false, message: "repo_id is uniq" }
end
