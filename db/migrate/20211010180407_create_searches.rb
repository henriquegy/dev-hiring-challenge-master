class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:searches)
      create_table :searches do |t|
        t.string :query
        t.string :repo_name
        t.string :repo_link
        t.string :repo_id

        t.timestamps
      end
    end

    unless column_exists?(:searches, :query, :string)
      add_column(:searches, :query, :string)
    end

    unless column_exists?(:searches, :repo_name, :string)
      add_column(:searches, :repo_name, :string)
    end

    unless column_exists?(:searches, :repo_link, :string)
      add_column(:searches, :repo_link, :string)
    end

    unless column_exists?(:searches, :repo_id, :string)
      add_column(:searches, :repo_id, :string)
    end
  end
end
